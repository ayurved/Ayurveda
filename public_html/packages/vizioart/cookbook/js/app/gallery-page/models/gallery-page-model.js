define([
	'jquery', 
	'underscore',
	'angular',
	'app/gallery-page/module',
	'fast-class'
], function ($, _, angular, Module) {

    
	Module.factory('GalleryPage', ['$http', '$q', 'Post', function($http, $q, Post){

		var model = Post.inheritWith(function(base, baseConstructor) {
			return {
				constructor: function() { 
					baseConstructor.call(this);//calls the baseConstructor
					this.apiUrl = CB.admin_api_url + '/gallery-page';
				},

				getAll: function(){
					var self = this;

					var defered = $q.defer();

					$http.get(self.apiResourceUrl())
						.success(function(data){
							defered.resolve(data);
						})
						.error(function(data){
							defered.reject(data);
						});

					return defered.promise;
				},

				getFilteredStatus: function(status){
					var self = this;
					
				}
			}
		});

		return model;
	}]);

});