<?php namespace Vizioart\Cookbook\Services\FileHandler;

use Illuminate\Support\ServiceProvider;
use Illuminate\Foundation\AliasLoader;

class FileHandlerServiceProvider extends ServiceProvider {

    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = false;

    /**
     * Register the service provider.
     *
     * @return void
     */
    public function register() {

        $this->app['filehandler'] = $this->app->share(function($app) {
            return $app->make('Vizioart\Cookbook\Services\FileHandler\FileHandler', array());
        });

        // add alias
        $loader = AliasLoader::getInstance();
        $loader->alias('FileHandler', 'Vizioart\Cookbook\Services\FileHandler\Facades\FileHandler');

    }

    /**
     * Get the services provided by the provider.
     *
     * @return array
     */
    public function provides(){
        return array();
    }

}