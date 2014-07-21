<?php namespace Vizioart\Cookbook;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use LaravelBaseController as BaseController;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;
use Symfony\Component\HttpFoundation\File\File as SFile;
use Illuminate\Support\Facades\Validator as LValidator;

use Vizioart\Cookbook\Models\PostModel as Post;


/**
 * 
 */
class PostApiController extends BaseController {

	// post type to be used as default
	public $postType;

	// parent type to be used as default
	public $parentType;
	

	public function __construct(){
		$this->postType = 'page';
		$this->parentType = 'category';
	}

	/**
	 * @name getFetchAll
	 *
	 * Fetches either all posts or all posts of given type
	 * Specific controllers for different types of post should use this function
	 * for retriving posts of their type
	 * In specific case where you want to return all posts, use 'all' as post type
	 * 
	 * @param string $type [optional] - Type of the post to be returned, defaults to $postType
	 * @return Response - returns Respons in json format including array of posts or error
	 * 
	 * @todo extend this function so it can accept some filters like order or limit...
	 */
	public function getFetchAll($type = false){

		$query = Post::query();

		if(empty($type)){
			$type = $this->postType;
		}

		if($type !== 'all'){
			$query->where('type', '=', $type);
		}
		
		$query->with(array("post_contents", "featured_image.file"));

		// @CHANGE
		$status = array('publish', 'draft');
		$query->whereIn('status', $status);

		// @CHANGE
		$order_by = 'created_at';
		$order = 'desc';
		$query->orderBy($order_by, $order);

		$result = $query->get();

		return Response::json($result);
	}

	/**
	 * @name getFetchById
	 *
	 * Fetches post with given ID
	 * 
	 * @param int $id - ID of post you want to fetch
	 * @return Response - returns Respons in json format including Post with given ID or error
	 */
	public function getFetchById($id){

		$post_model = new Post;
		$result = $post_model->get_by_id($id);
		
		//$result = Post::with(array("post_contents.meta", "post_meta", "galleries", "featured_image.file"))->find($id);
		
		if (empty($result)){
            return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}
		
		return Response::json($result);
	}

	/**
	 * @name getFetchParents
	 *
	 * Fetches all possible post parents for that type of post
	 * It can fetch 2 types of parents:
	 *
	 * type 1: 'category' - it will fetch all posts with same type,
	 *                      optionally it will not include post with specific ID
	 *
	 * type 2: 'archive'  - it will fetch all posts that are registered 
	 *                      as archive for given post type
	 * 
	 * @param string $parentType [optional] - Type of parents - 'category' | 'archive', defaults to 'category'
	 * @param int $postId [optional] - ID of post that shouldn't be included in result, only for category type
	 * @param string $postType [optional] - Post type for parents to be fetched, defaults to $postType
	 * @return Response - returns Respons in json format including array of parents for query or error
	 */
	public function getFetchParents($postType = false, $postId = null, $parentType = false){

		if(empty($postType)){
			$postType = $this->postType;
		}

		if(empty($parentType)){
			$parentType = $this->parentType;
		}

		$query = Post::with(array("post_contents" => function($query){
			$query->where('status', '=', 'publish');
		}))->where('status', '=', 'publish');

		if($parentType == 'category'){
			$query->where('type', '=', $postType);
		}else if($parentType == 'archive'){
			$query->where('archive_type', '=', $postType);
		}else{
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$result = $query->get();
		
		if (empty($result)){
            return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$pages = $result->toArray();
		$drilled = array();

		$this->drillChildren($drilled, $pages);

		$drilled = array_values($drilled);

		return Response::json($drilled);
	}

	/**
	 * @name drillChildren
	 *
	 * Sets level propertie for set of posts
	 * 
	 * @param array &$drilled - array of where drilled posts will be put
	 * @param array $data - array of posts to be drilled
	 * @param array $parent [optional] - parent that is active
	 * @param int $level [optional] - current level
	 * @return void
	 */
	protected function drillChildren(&$drilled, $data, $parent = null, $level = 0){
		foreach ($data as $obj) {
			if(!array_key_exists($obj['id'], $drilled)){
				if(empty($parent) || (!empty($parent) && $parent['id'] == $obj['parent_id'])){
					$obj['level'] = $level;
					$drilled[$obj['id']] = $obj;
					$newLevel = $level + 1;
					$this->drillChildren($drilled, $data, $obj, $newLevel);
				}
			}
		}
	}

	/**
	 * @name getCreate
	 *
	 * Creates new post for given type and returns it
	 * 
	 * @param string $type - Type of post that should be created, defaults to $postType
	 * @return Response - returns Respons in json format including created post or error
	 */
	public function getCreate($type = false){
		if(empty($type)){
			$type = $this->postType;
		}

		$result = Post::make($type);

		if(empty($result)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request.",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		return Response::json($result);
	}

	/**
	 * @name getFetchContent
	 *
	 * Fetches post content with given post ID and language
	 * 
	 * @param int $id - ID of post content you want to fetch
	 * @param string $languageCode - code for wished language (en, cs...)
	 * @return Response - returns Respons in json format including PostContent with given ID and language or error
	 */
	public function getFetchContent($id, $languageCode){
		if(empty($languageCode)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. No language",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$post = Post::find($id);
		if(empty($post)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. No Post",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}


		$result = $post->get_content($languageCode);
		if(empty($result)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}
		return Response::json($result);
	}

	/**
	 * @name deleteContent
	 *
	 * Deletes Post content with given ID
	 * 
	 * @param int $id - ID of post content you want to delete
	 * @return Response - returns Respons in json format including success message or error
	 */
	public function deleteContent($id){
		if(empty($id)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. No Content",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$model = new Post();
		$success = $model->delete_content($id);
		if(!$success){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => $model->errors,
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		return Response::json(array('deleted' => true), 200);
	}

	/**
	 * @name postSave
	 *
	 * Updates the post with parameters in POST
	 * 
	 * @return Response - returns Respons in json format including newly saved post or error
	 */
	public function postSave(){
		$input = Input::get();

		if(empty($input['id'])){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$post = Post::find($input['id']);

		if(!$post){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		if(!$post->update_safe($input)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => $post->errors,
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$post->load('galleries', 'featured_image.file');

		return Response::json($post);
	}

	/**
	 * @name getAttachGallery
	 *
	 * Attaches gallery to post by given IDs
	 * 
	 * @param int $id - ID of post to which gallery should be attached
	 * @param in $galleryId - ID of gallery that should be attached
	 * @return Response - returns Respons in json format including success or error
	 */
	public function getAttachGallery($id, $galleryId){
		if(empty($id) || empty($galleryId)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$post = Post::find($id);

		if(!$post){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		if(!$post->attach_gallery($galleryId)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => Post::$errors[0],
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		return Response::json(array('attached' => true), 200);
	}

	/**
	 * @name getAttachAttachment
	 *
	 * Attaches attachment to post by given IDs
	 * 
	 * @param int $id - ID of post to which attachment should be attached
	 * @param in $attachmentId - ID of attachment that should be attached
	 * @return Response - returns Respons in json format including success or error
	 */
	public function getAttachAttachment($id, $attachmentId){
		if(empty($id) || empty($attachmentId)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		$post = Post::find($id);

		if(!$post){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => "Bad request. Error",
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		if(!$post->attach_attachment($attachmentId)){
			return Response::json( 
            	array(
		            'error' => array(
		                'message' => Post::$errors[0],
		                'type' => "InvalidParameters", 
		                'code' => 100
		            )
                ), 400 // bad request
            );
		}

		return Response::json(array('attached' => true), 200);
	}

	/**
	 * @name getIsUrlUnique
	 *
	 * Checks if given url is unique in posts table
	 * 
	 * @param string $url - URL that should be checked
	 * @return Response - returns Respons in json format including bool if url is unique
	 */
	public function getIsUrlUnique($url){

		$model = new Post();
		$isUnique = $model->is_url_unique($url);
		return Response::json( array('isUnique' => $isUnique), 200 );
	}
}

