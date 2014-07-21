define([
	'jquery', 
	'underscore', 
	'angular',
	'app/core/module',
	'ladda'
], function ($, _, angular, Module, Ladda) {

	Module.directive('ladda', function(){
		return {
			restrict: 'A',
			scope: true,
			link : function(scope, element, attrs){
				var l = Ladda.create( element[0]);
				element.on('click', function(){
					l.start();
				});
				scope.$watch(attrs.ladda, function(newVal, oldVal){
					if (newVal !== undefined){
						if(!newVal) {
							l.stop();
						}
					}
				});
			}
		};
	});

});