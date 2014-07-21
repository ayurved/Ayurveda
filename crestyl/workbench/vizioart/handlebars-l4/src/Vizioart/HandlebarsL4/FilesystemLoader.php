<?php namespace Vizioart\HandlebarsL4;

use Handlebars\Loader;
use Illuminate\Filesystem\Filesystem;

class FilesystemLoader implements Loader {

	private $templates = array();

	public function __construct(Filesystem $files)
	{
		$this->app    = app();
		$this->files  = $files;
		$this->finder = $this->app['view.finder'];
	}

	public function load($name)
	{
		if (!isset($this->templates[$name])) {
			$this->templates[$name] = $this->loadFile($name);
		}
        return $this->templates[$name];
	}

	public function loadFile($name)
	{
		$path = $this->finder->find($name);
		return $this->files->get($path);
	}

}
