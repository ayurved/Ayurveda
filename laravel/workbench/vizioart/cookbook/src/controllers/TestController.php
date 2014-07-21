<?php namespace Vizioart\Cookbook;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use LaravelBaseController as BaseController;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;
use Symfony\Component\HttpFoundation\File\File as SFile;
use Illuminate\Support\Facades\Validator as LValidator;
use Image;

/**
 * 
 */
class TestController extends BaseController {


	public function getImageResize(){

		echo 'IMAGE RESIZE TEST';
		$original_path = public_path() . DIRECTORY_SEPARATOR . 'uploads' . DIRECTORY_SEPARATOR . 'test' . DIRECTORY_SEPARATOR . 'Desert.jpg';

		$resize_params = array(
			'method' => 'resize',
			'width' => 400,
			'height' => 400,
			'constraints' => array('upsize', 'aspectRatio'),
			'prefix' => 'resize.'
		);

		$fit_params = array(
			'method' => 'fit',
			'width' => 640,
			'height' => '1080',
			'prefix' => 'fit.',
			'sufix' => '.test'
		);


		function make_image_version($original_path, $params){
			
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
				$directory = public_url() . DIRECTORY_SEPARATOR . $params['directory'];
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


		make_image_version($original_path, $resize_params);
		make_image_version($original_path, $fit_params);
		
	}
}