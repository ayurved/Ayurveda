<?php namespace Vizioart\Cookbook\Repositories;

use Illuminate\Support\ServiceProvider;

use Vizioart\Cookbook\Models\DB\LanguageDBModel as LanguageModel;
use Vizioart\Cookbook\Repositories\Language\LanguageRepositoryEloquent;

class RepositoriesServiceProvider extends ServiceProvider {

	/**
	* Register
	*/
	public function register() {
		$this->registerLanguageRepository();
	}

	/**
	* Register the Language Repository
	*
	* @return void
	*/
	public function registerLanguageRepository() {
		$this->app->bind('Vizioart\Cookbook\Repositories\Language\LanguageRepositoryInterface', function($app) {
			return new LanguageRepositoryEloquent( new LanguageModel );
		});
	}


}