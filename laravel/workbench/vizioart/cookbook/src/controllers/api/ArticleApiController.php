<?php namespace Vizioart\Cookbook;

use Illuminate\Support\Facades\Response;

use Vizioart\Cookbook\Models\PostModel as Post;

/**
 * 
 */
class ArticleApiController extends PostApiController {

	public function __construct(){
		$this->postType = 'post';
		$this->parentType = 'archive';
	}


	/**
	 * @name getArticles
	 *
	 * 
	 * @param mixed $status [optional] - article status
	 * @return Response - returns Respons in json format including array of posts or error
	 * 
	 * @todo move this code to article repository
	 */
	public function getArticles($status = array()){

		$query = Post::query();

		// @CHANGE 
		$query->where('type', '=', $this->postType);

		// status
		// -------------------------------------
		$status = array('publish', 'draft');
		$query->whereIn('status', $status);

		// relations
		// -------------------------------------
		$query->with(array(
			"post_contents", 
			"featured_image.file"
		));

		// order
		// -------------------------------------
		$order_by	= 'created_at';
		$order 		= 'desc';

		$query->orderBy($order_by, $order);

		// get
		// -------------------------------------
		$result = $query->get();

		return Response::json($result);
	}
}

