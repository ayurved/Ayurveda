<?php namespace Vizioart\Cookbook\Repositories\Language;

interface LanguageRepositoryInterface {

	public function all();

	public function getById($id, array $with = array());

	public function getByCode($code, array $with = array());

}