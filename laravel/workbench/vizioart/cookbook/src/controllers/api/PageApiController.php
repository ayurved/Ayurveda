<?php namespace Vizioart\Cookbook;

/**
 * 
 */
class PageApiController extends PostApiController {

	public function __construct(){
		$this->postType = 'page';
		$this->parentType = 'category';
	}

	/**
	 * @name getPagesDatatables
	 *
	 * Gets data for pages datatables
	 * 
	 * @return Response - returns Respons in json format including data for datatables or error
	 */
	public function getPagesDatatables(){

		$pages = Post::where('type', 'page')
					 ->whereNotIn('status', array('trash', 'auto-draft'));

		$total = $pages->count();

		$result = $pages->with("post_contents")
						->get()
						->toArray();


		return Response::json(array(
			"sEcho" => 1,
			"iTotalRecords" => $total,
			"iTotalDisplayRecords" => $total,
			"aaData" => $result
		));
	}
}

