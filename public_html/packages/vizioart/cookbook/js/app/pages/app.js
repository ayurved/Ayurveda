define([
	'angular',
	'fast-class',
	'ui-utils',
	'ui-tinymce',
	'app/language/load',
	'app/page/load',
	'app/pages/directives/pages-directive'
], function (angular) {

    var App = angular.module("app", ['language.module', 'page.module', 'pages.module']);
    App.config(function($interpolateProvider){
		$interpolateProvider.startSymbol('[%').endSymbol('%]');
	});

	return App;
});