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

use Vizioart\Cookbook\Models\DB\LanguageDBModel as Langauge;

use Vizioart\Cookbook\Models\PostModel as Post;
use Vizioart\Cookbook\Models\GalleryModel as Gallery;
use Vizioart\Cookbook\Models\MenuModel as Menu;

/**
 * 
 */
class FrontApiController extends BaseController {


	public function getPage($lang_code, $page_name = '') {

		// check languages
		if (empty($page_name)){
			return Response::json(array(), 404);
		}
		$route_segments = array();
		$route_segments = explode('/', $page_name);

		$lang_code = $lang_code ? $lang_code : 'cs';
        //$lang_code = App::getLocale();

		$url = $lang_code . '/' . implode('/', $route_segments);

        $model = new Post;
        $page = $model->get_by_url($url);

        // 
        // -----------------------------------------------
        $found_url = '';
        $poped_route_segments = $route_segments;
        $item_id = 0;
        while (!$page &&  count($poped_route_segments)) {
            $poped_element = array_pop($poped_route_segments);
            $url =  $lang_code . '/' . implode('/', $poped_route_segments);
            $page = $model->get_by_url($url);

            if ($page){
                $found_url = $url;
                if($page->type == 'gallery-page'){
                	$item_id = intval($poped_element);
                }
            } 
        }


        $response = array(
            'page' => ''
        );

        if(!empty($page)){

            $response['page'] = $page;
        	
            if(!empty($item_id)){

	            $model = new Gallery();
	            $active_item = $model->get_item_by_id($item_id);

	            if(!empty($active_item)){
                    $response['active_item'] = $active_item;
	            }
	            
	        }

        	return Response::json($response, 200);

		} else {

            return Response::json(
                array(
                    'error' => array(
                        'message' => "Please specify page url.", // error msg (ie. 'You dont have a permission to...')
                        'type' => "InvalidParameters", // type of error (ie. 'AuthException')
                        'code' => 100 // error code, we'll define this later...
                    )
                ),
                400 // serve it with appropriate http headers code
            );
        }
    }

    public function getNews($lang_code = null){
        $model = new Post();

        $news = $model->get_all_news($lang_code);
        if(!empty($news)){
            return Response::json($news, 200);
        }else{
            return Response::json(array(), 200);
        }
    }

    public function getSetup(){

        // Get Translations
        // -----------------------------------------------------------------
        $translation_arr_en = \Lang::get('dock', array(), 'en');
        $translation_arr_cs = \Lang::get('dock', array(), 'cs');
        $translation_arr_ru = \Lang::get('dock', array(), 'ru');

        // Get Routes
        // -----------------------------------------------------------------
        $post_model = new Post();
        $routes = $post_model->get_routes();

        // Get Languages
        // -----------------------------------------------------------------
        $language_model = new Langauge();
        $languages = $language_model->get();      

        // Get Featured Images 
        // -----------------------------------------------------------------
        $post_model = new Post();
        $f_imgs = $post_model->get_all_featured_imgs();



        $res = array(
            'routes' => $routes,
            'translations' => array(
                'cs' => $translation_arr_cs,
                'en' => $translation_arr_en,
                'ru' => $translation_arr_ru,
            ),
            'languages' => $languages,
            'images' => $f_imgs,
        ); 

        return Response::json($res, 200);
    }

    public function getMenu($lang_code = '', $slug = '') {

        $model = new Menu();
        // check languages
        if (empty($slug)){
            $menus = $model->get_all($lang_code);
            if(!empty($menus)){
                return Response::json($menus, 200);
            }else{
                return Response::json(array(), 200);
            }
        }else{
            $menu = $model->get_by_slug($slug, $lang_code);
            if(!empty($menu)){
                return Response::json($menu, 200);
            }else{
                return Response::json(
                    array(
                        'error' => array(
                            'message' => "Please specify valid menu slug", // error msg (ie. 'You dont have a permission to...')
                            'type' => "InvalidParameters", // type of error (ie. 'AuthException')
                            'code' => 100 // error code, we'll define this later...
                        )
                    ),
                    400 // serve it with appropriate http headers code
                );
            }
        }

    }
}

