<?php namespace Vizioart\Cookbook;

/**
 * 
 */
class GalleryPageApiController extends PostApiController {


	public function __construct(){
		$this->postType = 'gallery-page';
		$this->parentType = 'category';
	}

	/**
	 * @name getParents
	 *
	 * changes post type from default which would be 'gallery-page' to 'page'
	 * 
	 */
	public function getFetchParents($postType = false, $postId = null, $parentType = false){
		return parent::getFetchParents('page');
	}
}

