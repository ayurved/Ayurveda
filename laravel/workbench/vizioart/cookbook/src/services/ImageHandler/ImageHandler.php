<?php namespace Vizioart\Cookbook\Services\ImageHandler;

use Image;
use Config;
use FileHandler;

class ImageHandler {

	public $image_versions;
	public $image_packages;

	public function __construct(){
		$this->image_versions = Config::get('cookbook::cookbook.image_versions');
		$this->image_packages = Config::get('cookbook::cookbook.image_packages');
	}

	public function getImageVersionsPaths($imagepath){
		$img = Image::make($imagepath);

		if(!$img){
			return false;
		}

		$directory = $img->dirname;
		$filename = $img->filename;

		$versions = array();

		foreach ($this->image_versions as $imageVersion) {
			$version_filename = $filename;
			if(!empty($imageVersion['prefix'])){
				$version_filename = $imageVersion['prefix'] . $filename;
			}
			if(!empty($imageVersion['sufix'])){
				$version_filename = $filename . $imageVersion['sufix'];
			}

			$basename = $version_filename . '.' . $img->extension;
			$versionPath = $directory . DIRECTORY_SEPARATOR . $basename;

			if(FileHandler::exists($versionPath)){
				$versions[] = $versionPath;
			}
		}

		return $versions;
	}

	public function getImageVersion($version_name){
		if(empty($version_name) || !is_string($version_name)){
			return false;
		}
		if(empty($this->image_versions)){
			$this->image_versions = Config::get('cookbook::cookbook.image_versions');
		}
		

		if(!empty($this->image_versions) && is_array($this->image_versions) && array_key_exists($version_name, $this->image_versions)){
			return $this->image_versions[$version_name];
		}else{
			return false;
		}
	}

	public function getImagePackageVersions($package_name){
		if(empty($package_name) || !is_string($package_name)){
			return array();
		}
		if(empty($this->image_packages)){
			$this->image_packages = Config::get('cookbook::cookbook.image_packages');
		}
		$versions = array();
		$package_versions = array();
		if(!empty($this->image_packages) && is_array($this->image_packages) && array_key_exists($package_name, $this->image_packages)){
			$package_versions =  $this->image_packages[$package_name];
		}
		if(!empty($package_versions)){
			foreach ($package_versions as $package_version) {
				$version = $this->getImageVersion($package_version);
				$versions[] = $version;
			}
		}

		return $versions;
	}

	public function makeImagePackage($original_path, $package_name){
		if(empty($package_name) || empty($original_path)){
			return false;
		}

		$versions = $this->getImagePackageVersions($package_name);

		return $this->makeImageVersions($original_path, $versions);
	}

	public function makeImageVersions($original_path, $versions){
		if(empty($versions) || empty($original_path) || !is_array($versions)){
			return false;
		}

		foreach ($versions as $version) {
			$this->makeImageVersion($original_path, $version);
		}

		return true;
	}

	public function makeImageVersion($original_path, $params){
		
		if(empty($params) || empty($original_path) || !is_array($params) || empty($params['method'])){
			return false;
		}

		

		$img = Image::make($original_path);

		if(!$img){
			return false;
		}

		$method = $params['method'];

		if(!empty($params['width'])){
			$width = intval($params['width']);
		}else{
			$width = null;
		}

		if(!empty($params['height'])){
			$height = intval($params['height']);
		}else{
			$height = null;
		}

		switch ($method) {
			case 'crop':
				if(!empty($params['x'])){
					$x = $params['x'];
				}else{
					$x = null;
				}

				if(!empty($params['y'])){
					$y = $params['y'];
				}else{
					$y = null;
				}
				$img->crop($width, $height, $x, $y);
				break;
			case 'fit':
				$img->fit($width, $height);
				break;
			case 'resize':
			default:
				$constraints = false;
				if(array_key_exists('constraints', $params)){
					$constraints = $params['constraints'];
					if(empty($constraints)){
						$constraints = false;
					}
				}
				if($constraints){
					$callback = function($constraint) use($constraints){
						foreach ($constraints as $c) {
							$constraint->$c();
						}
					};
				}else{
					$callback = null;
				}

				$img->resize($width, $height, $callback);
				break;
		}

		if(!empty($params['directory'])){
			$directory = public_path() . DIRECTORY_SEPARATOR . $params['directory'];
		}else{
			$directory = $img->dirname;
		}
		$directory = rtrim($directory, DIRECTORY_SEPARATOR);
		$filename = $img->filename;
		if(!empty($params['prefix'])){
			$filename = $params['prefix'] . $filename;
		}
		if(!empty($params['sufix'])){
			$filename = $filename . $params['sufix'];
		}

		$basename = $filename . '.' . $img->extension;

		$img->save($directory . DIRECTORY_SEPARATOR . $basename);
		return true;
	}
}