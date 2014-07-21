define([
	'angular',
	'app/gallery-page/load'
], function (angular) {
	//console.log('app loaded');

    var App = angular.module("app", ['gallery-page.module']);
    App.config(function($interpolateProvider){
		$interpolateProvider.startSymbol('[%').endSymbol('%]');
	});

	return App;
});