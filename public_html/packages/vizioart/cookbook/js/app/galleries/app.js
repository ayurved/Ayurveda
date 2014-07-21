define([
	'angular',
	'fast-class',
	'ui-utils',
	'ui-tinymce',
	'app/language/load',
	'app/gallery-page/load',
	'app/galleries/directives/galleries-directive'
], function (angular) {

    var App = angular.module("app", ['language.module', 'gallery-page.module', 'galleries.module']);
    App.config(function($interpolateProvider){
		$interpolateProvider.startSymbol('[%').endSymbol('%]');
	});

	return App;
});