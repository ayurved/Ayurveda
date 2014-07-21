<?php


// all templates
View::composer('hbs::*', function($view) {

	// add common data
	$view->with(array(
		'baseUrl' => url(),
		'lang' => App::getLocale(),
		'ie' => \BrowserDetect::isIE(),
		'ie11' => \BrowserDetect::isIEVersion(11),
	));


	// get data (assume page)
	if ($view->offsetExists('data')){
		$page = $view->offsetGet('data');	
		// page name
		if ($page && is_object($page) && property_exists($page, 'name')){
			$view->with('page',	$page->name);	
		} 
	}


	$viewName = $view->offsetExists('viewName') ? $view->offsetGet('viewName') : '';
	$view->with('viewName',	$viewName);

});


// all templates
View::composer('hbs::navigation', function($view) {

	$routes = $view->offsetGet('data');

	$data = new stdClass;
	$data->desktop = $routes[0];
	$data->mobile = $routes[1];

	$view->with(array(
		'data' => $data,
	));

});



// home.hbs
View::composer( array('hbs::home','hbs::homeIE'), function($view) {

	// page data
	$page = $view->offsetGet('data');

	$viewName = $view->offsetGet('viewName');
	
	$lang = app::getLocale();
	
	$headline = array(
		'cs' => 'DOCKonalý domov',
		'en' => 'Perfect home',
		'ru' => 'Идеальный дом'
	);
	
	
	View::share('imageSrc', '0.jpg');
	View::share('headline', $headline[$lang]);

});

// navigationPage.hbs
View::composer('hbs::navigationPage', function($view) {
	
	// get page data 
	$page = $view->offsetGet('data');

	$colSize = 1;
	$children = $page->children;
	
	if (!empty($children) && is_array($children)){
		$colNum = (count($children) <= 4) ? count($children) : 3;
		$colSize = 12/$colNum;
	}

	// add data
	$view->with(array(
		'colSize' => $colSize,
		'dataFit' => $colSize*4
	));

});

// page.hbs
View::composer('hbs::page', function($view) {

	$viewName = $view->offsetExists('viewName') ? $view->offsetGet('viewName') : '';

	// add data
	$view->with(array(
		'view' => $viewName,
	));
});

// pageSlider.hbs
View::composer('hbs::pageSlider', function($view) {

	$page = $view->offsetGet('data');

	$param = false;
	if(property_exists($page, 'parent_title')) {
		$param = true;
	}

	// add data
	$view->with(array(
		'counter' => null,
		'param' => $param,
	));
});

// news.hbs
View::composer('hbs::news', function($view) {

	// get page data
	$page = $view->offsetGet('data');

	// get articles
	$posts = $page->children;

	// add data
	$view->with(array(
		'data' => $posts,
		'page' => $view->offsetGet('viewName'),
		'param' => false,
	));

});

// article.hbs
View::composer('hbs::article', function($view) {

	// get viewName
	$viewName = $view->offsetGet('viewName');

	// add data
	$view->with(array(
		'page' => $viewName,
		'view' => $viewName,
		'param' => false, // @CHANGE 
	));

});

// gallery.hbs
View::composer('hbs::gallery', function($view) {

	// page data
	$page = $view->offsetGet('data');

	// gallery data
	$data = $page->galleries[0];

	// parent url 
	$link = $page->permalink;
	$perent_url = substr( $link , 0 , strrpos($link, "/") );


	$viewName = $view->offsetGet('viewName');
	$pageName = $page->name;

	// add data
	$view->with(array(
		'data' => $data,
		'page' => $viewName,
		'param' => $pageName, // @CHANGE 
		'link' => $perent_url,
	));

});

// photo.hbs
View::composer('hbs::photo', function($view) {


	// page data
	$page = $view->offsetGet('data');
	$active_item = $view->offsetGet('active_item');
	$pageParams = $view->offsetGet('pageParams');
	
	// expand data
	$page->thumbnails = $page->galleries[0]->items;
			
	// serialize
	$active_item = json_decode($active_item->toJson());
	$page->active_item = $active_item;
	
	// set page data
	$view->offsetSet('data', $page);
	
	View::share('data', $page);
	View::share('page', 'gallery');
	View::share('param', $page->name);
	View::share('subparam', $pageParams[0]);


});
