<?php namespace Vizioart\Cookbook\Services\ImageHandler\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @see \Illuminate\Session\SessionManager
 * @see \Illuminate\Session\Store
 */
class ImageHandler extends Facade {

        /**
         * Get the registered name of the component.
         *
         * @return string
         */
        protected static function getFacadeAccessor() { return 'imagehandler'; }

}