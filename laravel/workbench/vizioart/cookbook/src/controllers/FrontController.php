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

use Vizioart\Cookbook\Models\PostModel as Post;
use Vizioart\Cookbook\Models\GalleryModel as Gallery;
use Vizioart\Cookbook\Models\MenuModel as Menu;

class FrontController extends BaseController {

    protected $route_segments = array();
    
    protected $locale = false;

    public function __construct(){
        $this->locale = App::getLocale();
        $this->route_segments = Request::segments();
    }

    // -------------------------------------------------------------------------

	public function getIndex(){
        
	}

    /**
     *
     */
    public function resolveRoute($route = null){
	    // make sure default route is set
        App::setLocale('cs');

        /**
         * when using route like this : Route::get('{var?}', ...)->where('var', '(.*)');
         * var is passed with first forward slash
         */
        $route = ltrim($route, '/');

        // home page (default locale)
        if (empty($route)){
            return $this->renderHomePage();
        }

        if (!empty($this->route_segments)) { 
            
            // check for locale segment
            if (in_array($this->route_segments[0], $this->get_site_locales())) {
                App::setLocale($this->route_segments[0]);
                $this->locale = $this->route_segments[0];
            } else {
                
                /** 
                 * First segment is reserved for locale
                 * If its not locale string return 404
                 *
                 * @TO_DO try to return more helpful response.
                 */
                App::abort(404);
            }
        }

        if (count($this->route_segments) == 1){
            // home page in requested locale
			return $this->renderHomePage();
        }

        // try to get page by url 
        $model = new Post();
        $post = $model->get_by_url($route);

        
        if ($post){
            return $this->renderPage($post);
        }

        // -----------------------------------------------
        //  Parameterized Pages 
        // -----------------------------------------------

        $route_segments = $this->route_segments;
        $popped_route_segments = array();
        $searched_urls = array();
        $found_url = '';
        $tries = 0;

        while (!$post && count($route_segments)>2 && $tries < 3) {
            $tries++;
            array_push($popped_route_segments, array_pop($route_segments));
            $url = implode('/', $route_segments);
            $searched_urls[] = $url;
            $post = $model->get_by_url($url);

            if ($post){
                $found_url = $url;
            } 
        }
        
        if ($post){
            // get params in original order after page url is found
            $page_params = array_reverse($popped_route_segments);
            return $this->renderPage($post, $page_params);
        }

        // no result, do 404
        // -----------------------------------------------
        App::abort(404);
    }

    // ------------------------------------------------------------------------------------

    protected function renderPage($post, $params = null){
        
        $post_type = $post->type;
        $post_view = $post->view;

        // @CHANGE !!!
        // --------------------------------------
        if ('gallery' == $post_view && !empty($params)){
        	return $this->renderGalleryItemPage($post, $params);
        }

        // --------------------------------------

        $view_data = array();

        // meta
        // --------------------------------------
        $meta_data = $this->setMetaData($post);
        $view_data = array_merge($view_data, $meta_data);

        // navigation
        // --------------------------------------
        $view_data['navigation'] = $this->renderNavigation();

        // template
        // --------------------------------------
        $template_data = $this->setPageData($post, $params);

        // page template (handlebars)
        $content = View::make('hbs::'.$post_view, $template_data);
        $view_data['content'] = $content;

        return View::make('layouts.application', $view_data);
    }

    protected function renderNavigation(){

        $model = new Menu();
        $menus = $model->get_all(app::getLocale());

        $template_data = array(
            'data' => json_decode($menus->toJson()),
        );

        return View::make('hbs::navigation', $template_data);
    }

    // ------------------------------------------------------------------------------------

    protected function renderGalleryItemPage($post, $params){
    
        $view_data = array();
        
        // get gallery item
        $model = new Gallery();
        $active_item = $model->get_item_by_id($params[0]);

        // next / prev
        $post->next = $post->galleries[0]->items->filter(function($item) use($active_item) {
            return $item->id > $active_item->id;
        })->first();
        $post->prev = $post->galleries[0]->items->filter(function($item) use($active_item) {
            return $item->id < $active_item->id;
        })->first();
        
        $add_data = array(
            'pageParams' => $params,
            'active_item' => $active_item
        );
                
        // --------------------------------------
        $meta_data = $this->setMetaData($post);
        $view_data = array_merge($view_data, $meta_data);

        // navigation
        // --------------------------------------
        $view_data['navigation'] = $this->renderNavigation();

        // --------------------------------------
        $template_data = $this->setPageData($post, $add_data);

        // page template (handlebars)
        $content = View::make('hbs::photo', $template_data);
        $view_data['content'] = $content;

        return View::make('layouts.application', $view_data);
    }

 
    protected function renderHomePage(){
    
        $view_data = array();
        
        // --------------------------------------
        $meta_data = $this->setMetaData();
        $view_data = array_merge($view_data, $meta_data);

        // navigation
        // --------------------------------------
        $view_data['navigation'] = $this->renderNavigation();

        // --------------------------------------
        $template_data = $this->setPageData();
        
        // page template (handlebars)
        $ie = \BrowserDetect::isIE();
		$isMobile = \BrowserDetect::isMobile();

        //$tmpl = ($ie || $isMobile) ? 'hbs::homeIE' : 'hbs::home';
        $tmpl = 'hbs::home';
        
        $content = View::make($tmpl, $template_data);
        $view_data['content'] = $content;

        return View::make('layouts.application', $view_data);
    }

    
    
    // ------------------------------------------------------------------------------------

    protected function setMetaData($post = null){

        // @TO_DO
        // get meta from config 
        // ---------------------------------------------



        // default meta
        $default_meta = array(
            'meta_title'        => Config::get('seo.meta_title',        'CookBook'),
            'meta_description'  => Config::get('seo.meta_description',  'CookBook - Content Management System'),
        );

        $default_og_meta = array(
            'og_title'          => Config::get('seo.og_title',          'CookBook'),
            'og_description'    => Config::get('seo.og_description',    'CookBook - Content Management System'),
            'og_type'           => Config::get('seo.og_type',           'website'),
            'og_site_name'      => Config::get('seo.og_site_name',      'CookBook'),
            'og_image'          => Config::get('seo.og_image',          ''),
            'og_locale'         => Config::get('seo.og_locale',         'en_US'),
        );

        // merge
        $meta_data = array_merge($default_meta, $default_og_meta);

        // helper array
        $og_locale_arr = array(
            'cs' => 'cs_CZ',
            'en' => 'en_EN',
        );

        if ($post){

            $flat_meta = array();
            foreach ($post->meta as $meta_obj) {
                $key = $meta_obj['meta_key'];
                $val = $meta_obj['meta_value'];
                $flat_meta[$key] = $val;
            }

            $meta_data['meta_title'] = $this->createTitle($post->title);
            $meta_data['og_title'] = $meta_data['meta_title'];

            if (!empty($flat_meta)){
                if (isset($flat_meta['meta_title']) && !empty($flat_meta['meta_title'])){
                    $meta_data['meta_title'] = $this->createTitle($flat_meta['meta_title']);                    
                }

                if (isset($flat_meta['meta_description']) && !empty($flat_meta['meta_description'])){
                    $meta_data['meta_description'] = $flat_meta['meta_description'];           
                }


                if (isset($flat_meta['og_title']) && !empty($flat_meta['og_title'])){
                    $meta_data['og_title'] = $this->createTitle($flat_meta['og_title']);                    
                } else {
                     $meta_data['og_title'] = $meta_data['meta_title'];
                }

                if (isset($flat_meta['og_description']) && !empty($flat_meta['og_description'])){
                    $meta_data['og_description'] = $flat_meta['og_description'];           
                } else {
                     $meta_data['og_description'] = $meta_data['meta_description'];
                }
            }

            if( array_key_exists($this->locale, $og_locale_arr)){
                $meta_data['og_locale'] =  $og_locale_arr[$this->locale];
            }

            if (!empty($post->featured_image) ){
                $meta_data['og_image'] = url('uploads/md_'.$post->featured_image->url);
            }
        }


        return $meta_data;
    }

    private function createTitle($page_title = ''){
        $title = Config::get('seo.meta_title', 'CookBook');
        if (!empty($page_title)){
            $title = Config::get('seo.meta_title_prefix', 'CookBook') . $page_title;
        }
        return $title;
    }

    // ------------------------------------------------------------------------------------


    protected function setPageData($post = null, $params = array()){

        $post = ($post) ? json_decode($post->toJson()) : null;
        $postView = ($post) ? $post->view : null;
        
        // meke it global so all partials can access it
        View::share('data', $post);

        // security check 
        // $params
        if (empty($params)){
            $params = array();
        }
        
        $template_data = array(
            'data' => $post,
            'viewName' => $postView,
        );

        $page_data = array_merge($template_data, $params);
        return $page_data;
    }

    // ------------------------------------------------------------------------------------


    /** 
     * Wrapper function to get available locales
     *
     * @TO_DO get site locales dynamicaly
     *
     * @return array - list of available locales
     */
    protected function get_site_locales(){
        return array(
            'cs', 
            'en'
        );
    }

}