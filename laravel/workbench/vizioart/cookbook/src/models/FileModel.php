<?php namespace Vizioart\Cookbook\Models;

use Vizioart\Cookbook\Models\DB\FileDBModel as FileDB;
use Illuminate\Support\Facades\File;
use DB;
use FileHandler;
use ImageHandler;


class FileModel extends FileDB {

	const DEFAULT_TYPE = 'image';

	public function insert($filepath){

		if(!FileHandler::exists($filepath)){
			$this->errors[] = 'File doesn\'t exists';  
			return false;
		}

		$params = array();
		$params['user_id'] = 1;
		$params['name'] = FileHandler::getFileName($filepath);
		$params['size'] = FileHandler::size($filepath);
		$params['extension'] = FileHandler::extension($filepath);

		$new_filename = FileHandler::uniqueFilename(FileHandler::uploadsPath(), $params['name']);
		$new_filepath = FileHandler::uploadsPath($new_filename);

		FileHandler::move($filepath, $new_filepath);

		$new_relative_url = FileHandler::uploadsRelativeUrl($new_filename);

		$params['url'] = $new_filename;

		if( in_array(strtolower($params['extension']), array('jpg', 'jpeg', 'png', 'gif'))){
			$params['type'] = 'image';
			ImageHandler::makeImagePackage($new_filepath, 'all');
		}else{
			$params['type'] = 'document';
		}

		$this->fill($params);

		try{
			
			DB::beginTransaction();
			if(!$this->save()){
				DB::rollBack();
				$this->errors[] = 'Failed to insert File';
				return false;
			}
			
			DB::commit();
			return $this->id;	
			
		}catch(PDOException $e){
			DB::rollBack();    
			$this->errors[] = 'Fatal error' . $e->message;    
			return false;
		}
	}

	public function delete_safe($ids){
		if(empty($ids)){
			return false;
		}

		try{
			
			DB::beginTransaction();

			if(!is_array($ids)){
				$ids = array($ids);
			}
			foreach ($ids as $id) {
				$file = self::find($id);
				if(!$file){
					DB::rollBack();
					$this->errors[] = 'Invalid File ID';
					return false;
				}

				if(!$file->delete()){
					DB::rollBack();
					$this->errors[] = 'Failed to delete File';
					return false;
				}

				$filepath = FileHandler::uploadsPath($file->url);

				if($file->type == 'image'){
					$versions = ImageHandler::getImageVersionsPaths($filepath);

					foreach ($versions as $version) {
						FileHandler::delete($version);
					}
				}
			}

			if(FileHandler::exists($filepath)){
				FileHandler::delete($filepath);
			}

			DB::commit();
			return true;
		}catch(PDOException $e){
			DB::rollBack();    
			$this->errors[] = 'Fatal error' . $e->message;    
			return false;
		}
	}

}