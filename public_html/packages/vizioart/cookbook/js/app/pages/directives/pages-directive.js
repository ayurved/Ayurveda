define([
	'jquery', 
	'underscore', 
	'angular',
	'angular-sanitize',
	'app/language/models/language-model',
	'app/page/models/page-model',
], function ($, _, angular) {


angular.module('pages.module', [])
	.directive('pageItem', ['$sce', '$filter', 'Language', 'Page', function($sce, $filter, Language, Page){
		return {
		    restrict: 'A',
		    templateUrl: CB.admin_assets_url + '/js/app/pages/templates/page-listing-item.html',
		    scope: {
		      item: '=',
		      language: '=',
		      searchquery: '='
		    },
		    controller: function($scope){

		    	$scope.getEditLink = function(){
		    		var url = CB.admin_url + '/pages/edit/' + $scope.item.id;
		    		return url;
		    	}

		    },
		    replace: true, // Replace with the template below
		    link: function(scope, element, attrs) {
		    	
		    	scope.content = {};
		    	scope.datePublished = function(){
		    		
	    			var created_at = moment(scope.item.created_at),
						updated_at = moment(scope.item.updated_at),
						now = moment(),
						old = now.diff(created_at, 'days') > 1 ? true : false,
						display = '';

					if (status=='publish'){
						display = old ? created_at.format("YYYY-MM-DD HH:mm") : created_at.fromNow();
					} else {
						display = old ? updated_at.format("YYYY-MM-DD HH:mm") : updated_at.fromNow();
					}
					return display;
		    	};


		    	var getPostContentByLang = function(lang){

		    		var lang_id = lang.id;
		    		var post_content = _.find(scope.item.post_contents, function(post_content){ 
		    			return post_content.language_id == lang_id; 
		    		});

		    		if (_.isUndefined(post_content)){
		    			// set default lang
		    			// if still undefined, set first lang
		    		}

		    		return post_content;
		    	};
		    	scope.content.permalink = '';

				scope.$watch('language', function(newValue, oldValue) {
					scope.content = getPostContentByLang(newValue);

					scope.content.permalink = CB.site_url +'/'+scope.content.url;
					//console.log(scope.content);
				});

				scope.$watch('content.title', function(val){
					val = $filter('highlight')(val, scope.searchquery);
					scope.trustedTitle = $sce.trustAsHtml(val);
				});

				scope.$watch('searchquery', function(val){
					var trustedTitle = $filter('highlight')(scope.content.title, val);
					scope.trustedTitle = $sce.trustAsHtml(trustedTitle);
				});


				scope.content.image = CB.admin_assets_url + '/images/empty.gif';
				if(_.isObject(scope.item.featured_image)){
					scope.content.image = CB.site_url + '/uploads/md_' + scope.item.featured_image.file.url;
				}

		    }
		}
	}])
	.filter('permalink', function () {
	    return function (url, context) {
	        if (!url) { return ''; }

	        if (context && context == 'display' ) {
	        	url = decodeURI(url);
	        }

	       	return CB.site_url +'/'+ url;
	    };
	});
});

