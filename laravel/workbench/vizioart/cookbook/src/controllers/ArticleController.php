<?php namespace Vizioart\Cookbook;


use Vizioart\Cookbook\Models\PostModel as Post;

/**
 * 
 */
class ArticleController extends AdminPageBaseController {

	public function index(){

		// $this->renderPage(array(
		// 	"content_view" => 'cookbook::pages.article.index'
		// ));

		$footer_data['scripts'] = array(
			array(
				'src' => asset('packages/vizioart/cookbook/js/lib/require.min.js'),
				'attrs' => array(
					'data-main' => asset('packages/vizioart/cookbook/js/app/articles/ps-articles-main.js')
				),
			)
		);

		$this->renderPage(array(
			"content_view" => 'cookbook::pages.article.index',
			"footer_data" => $footer_data
		));
	}

	/**
	 * Add new Page
	 * 
	 */
	public function add(){
		
		$content_data = array(
			"post_id" => 0,
			"mod" => 'new',
		);

		// Page scripts
		$footer_data['scripts'] = array(
			array(
				'src' => asset('packages/vizioart/cookbook/js/lib/require.min.js'),
				'attrs' => array(
					'data-main' => asset('packages/vizioart/cookbook/js/app/article/ps-article-main.js')
				),
			)
		);

		$this->renderPage(array(
			"content_view" => 'cookbook::pages.article.edit',
			"content_data" => $content_data,
			"footer_data" => $footer_data
		));
	}

	/**
	 * Edit existing Page
	 *
	 * @param string|int page (post) id
	 */
	public function edit($id = false){
		
		//set the layout content
		

		$content_data = array();
		if (!empty($id)){
			$model = Post::where('type', 'post')->find($id);
			if ($model){
				$content_data['post_id'] = $model->id;
				$content_data['mod'] = 'edit';
			} else {
				//throw new Exception("Cant find post with that ID", 1);
				//die();
				// 404
			}
		}else{
			//throw new Exception("You have to specify post ID", 1);
			//die();
			// 404
		}

		// Page scripts
		$footer_data['scripts'] = array(
			array(
				'src' => asset('packages/vizioart/cookbook/js/lib/require.min.js'),
				'attrs' => array(
					'data-main' => asset('packages/vizioart/cookbook/js/app/article/ps-article-main.js')
				),
			)
		);

		$this->renderPage(array(
			"content_view" => 'cookbook::pages.article.edit',
			"content_data" => $content_data,
			"footer_data" => $footer_data
		));
	}


}