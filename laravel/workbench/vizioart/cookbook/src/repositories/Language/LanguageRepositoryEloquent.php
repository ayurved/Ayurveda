<?php namespace Vizioart\Cookbook\Repositories\Language;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;

//use Navigator\Repositories\Favourites\FavouriteRepositoryInterface;
//use Illuminate\Support\MessageBag;

class LanguageRepositoryEloquent implements LanguageRepositoryInterface {

	/**
	 * @var Illuminate\Database\Eloquent\Model
	 */
	protected $model;

	/**
	 * Construct
	 *
	 * @param Illuminate\Database\Eloquent\Model $user
	 */
	public function __construct(Model $model) 
	{
		$this->model = $model;
	}

	// LanguageRepositoryInterface implementation
	// --------------------------------------------------------------------------------------

	/**
	 * Retrieve all entities
	 *
	 * @return Illuminate\Database\Eloquent\Collection
	 */
	public function all(array $with = array()) {
		$collection = $this->make($with)
						   ->get();
		return $collection;
	}

	/**
	 * Search a single result by key and value
	 *
	 * @param string $key
	 * @param mixed $value
	 * @param array $with
	 * @return Illuminate\Database\Eloquent\Model
	 */
	public function getFirstBy($key, $value, array $with = array()) {
		return $this->make($with)
					->where($key, '=', $value)
					->first();
	}

	/**
	 * Retrieve single language by id
	 *
	 * @param int $id
	 * @param array $with
	 * @return Illuminate\Database\Eloquent\Model
	 */
	public function getById($id, array $with = array()) {
		$entity = $this->make($with)
					   ->where('id', '=', $id)
					   ->first();
		// return decorated object
		return $entity;
	}

	/**
	 * Retrieve single language by code ()
	 *
	 * @param int $id
	 * @param array $with
	 * @return Illuminate\Database\Eloquent\Model
	 */
	public function getByCode($code, array $with = array()) {
		$entity = $this->make($with)
					   ->where('code', '=', $code)
					   ->first();
		// return decorated object
		return $entity;
	}

	// 
	// --------------------------------------------------------------------------------------

	/**
	 * Make a new instance of the entity to query on
	 *
	 * @param array $with
	 */
	public function make(array $with = array()) {
		// default with
		return $this->model->with($with);
	}

}