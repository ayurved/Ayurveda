define([
	'angular',
	//'lib/angular-1.2.16/angular-animate.min',
	//'plugins/toaster'
], function (angular) {

    var Module = angular.module('core.module', []);

    Module.config(function($interpolateProvider){
		$interpolateProvider.startSymbol('[%').endSymbol('%]');
	});

	return Module;
});