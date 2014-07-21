<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

// ===============================================
// API SECTION
// ===============================================
Route::group(array('prefix' => 'api'), function () {


	// API ROUTE ERROR handling
	// -------------------------------------------------
	Route::get('/{else}', function(){
		// return 400 - bad request
		return Response::json(array(
			'error' => array(
				'message' => "Bad Request", 
				'type' => "BadRequest"
			)
		), 400);
	})->where('else', '(.*)');
	
});
// ----------------------------------------------


// ===============================================
// FRONT
// ===============================================
Route::get('/{route?}', 'Vizioart\Cookbook\FrontController@resolveRoute')
	->where('route', '(.*)');

App::missing(function($exception){
	$view_data = array(
		'meta_title' => 'Page Not Found',
	);
	// --------------------------------------
    $model = new Vizioart\Cookbook\Models\MenuModel;
    $menus = $model->get_all(app::getLocale());
    $template_data = array(
        'data' => json_decode($menus->toJson()),
    );
    $view_data['navigation'] = View::make('hbs::navigation', $template_data);
    // --------------------------------------
    // page template (handlebars)
    $view_data['content'] = View::make('hbs::404');
    return Response::view('layouts.error', $view_data, 404);
});




