<?php namespace Vizioart\Cookbook\Services\ImageHandler;

use Illuminate\Support\ServiceProvider;
use Illuminate\Foundation\AliasLoader;

class ImageHandlerServiceProvider extends ServiceProvider {

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

        $this->app['imagehandler'] = $this->app->share(function($app) {
            return $app->make('Vizioart\Cookbook\Services\ImageHandler\ImageHandler', array());
        });

        // add alias
        $loader = AliasLoader::getInstance();
        $loader->alias('ImageHandler', 'Vizioart\Cookbook\Services\ImageHandler\Facades\ImageHandler');

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