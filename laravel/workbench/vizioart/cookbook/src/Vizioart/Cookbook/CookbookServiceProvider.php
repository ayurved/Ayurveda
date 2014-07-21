<?php namespace Vizioart\Cookbook;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\View;

class CookbookServiceProvider extends ServiceProvider {

	/**
	 * Indicates if loading of the provider is deferred.
	 *
	 * @var bool
	 */
	protected $defer = false;

	/**
	 * Bootstrap the application events.
	 *
	 * @return void
	 */
	public function boot() {

		$this->package('vizioart/cookbook');

		//define a constant that the rest of the package can use to conditionally use pieces of Laravel 4.1.x vs. 4.0.x
		$this->app['cookbook.4.1'] = version_compare(\Illuminate\Foundation\Application::VERSION, '4.1') > -1;

		//set up an alias for the base laravel controller to accommodate >=4.1 and <4.1
		if (!class_exists('LaravelBaseController')){ // Verify alias is not already created
			if ($this->app['cookbook.4.1'])
				class_alias('Illuminate\Routing\Controller', 'LaravelBaseController');
			else
				class_alias('Illuminate\Routing\Controllers\Controller', 'LaravelBaseController');
		}

		// Repositories
		// --------------------------------------------------------------
		$this->bootRepositories();

		// Handlebars Templates
		// --------------------------------------------------------------
		$frontend_templates_path = public_path() . DIRECTORY_SEPARATOR . $this->app['config']->get('cookbook::cookbook.front_templates');
		View::addNamespace('hbs', $frontend_templates_path);


		include __DIR__.'/../../filters.php';
		include __DIR__.'/../../viewComposer.php';
		include __DIR__.'/../../routes.php';
	}

	/**
	 * Register the service provider.
	 *
	 * @return void
	 */
	public function register() {
		$this->registerSevices();
	}

	/**
	 * Get the services provided by the provider.
	 *
	 * @return array
	 */
	public function provides() {
		return array();
	}

	protected function bootRepositories(){
		$this->app->register('Vizioart\Cookbook\Repositories\RepositoriesServiceProvider');
	}

	protected function registerSevices(){

		// Plupload
		// -----------------------------------------------------------------------------
		$this->app->register('Vizioart\Cookbook\Services\Plupload\PluploadServiceProvider');

		// Sanitize
		// -----------------------------------------------------------------------------
		$this->app->register('Vizioart\Cookbook\Services\Sanitize\SanitizeServiceProvider');

		// FileHandler
		// -----------------------------------------------------------------------------
		$this->app->register('Vizioart\Cookbook\Services\FileHandler\FileHandlerServiceProvider');

		// ImageHandler
		// -----------------------------------------------------------------------------
		$this->app->register('Vizioart\Cookbook\Services\ImageHandler\ImageHandlerServiceProvider');
	}

}
