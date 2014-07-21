<?php namespace Vizioart\Cookbook;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use LaravelBaseController as BaseController;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;
use Symfony\Component\HttpFoundation\File\File as SFile;
use Illuminate\Support\Facades\Validator as LValidator;

use Plupload;
use FileHandler;
use Vizioart\Cookbook\Models\DB\LanguageDBModel as Langauge;
use Vizioart\Cookbook\Models\FileModel as FileModel;

/**
 * 
 */
class FileApiController extends BaseController {

	/**
	 *
	 */
	public function getIndex(){
	}

	/**
	 *
	 */
	public function postUpload(){
		// checks 

		// handle upload 
		return Plupload::receive('plupload_file', function ($file) {

			$upload_path = FileHandler::uploadsPath('temp');
			if (!file_exists($upload_path)) {
				mkdir($upload_path);
			}

			// it will overwrite existing file!!!
			$file->move($upload_path, $file->getClientOriginalName());

			$model = new FileModel;

			$file_id = $model->insert($upload_path . DIRECTORY_SEPARATOR . $file->getClientOriginalName());

			$file = $model->find($file_id);

			return array('file' => $file);
		});
	}

	public function deleteFile($id) {
		if(empty($id)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$model = new FileModel;

		$file = $model->find($id);

		if(!$file){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		if(!$model->delete_safe($id)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => $model->errors[0],
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}else{
			Response::json(array('result' => $file));
		}
	}

}

