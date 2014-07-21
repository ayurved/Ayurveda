define([
	'jquery', 
	'underscore', 
	'angular',
	'app/post/module'
], function ($, _, angular, Module) {

    
	Module.directive('postStatus', ['$timeout', function($timeout){
		return {
			restrict: 'A',		
			templateUrl: CB.admin_assets_url + '/js/app/post/templates/post-status-template.html',
			scope: {
				// post model (whole model - $scope.Post)
				model: '=',

				// post form status (from Post.form)
				status: '=postStatus',

				// post model status (from Post.model)
				oldStatus: '=postModelStatus',

				// post form crated_at (from Post.form)
				createdAt: '=postCreatedAt', 

				// list of available statuses (and their labels)
				availableStatuses: '=?'
			},

			link: function(scope, element, attrs){

				// create separate form model for this isolated scope
				scope.form = {
					// new status that is defined in directive
					newStatus: undefined,
					statuses: {
						'publish': 'Published',
						'draft': 'Draft'
					}
				};

				// watch for status changes and update new status accordingly
				scope.$watch('status', function(newValue, oldValue){
					if(typeof oldValue == 'undefined' || (typeof oldValue == 'string' && oldValue.length < 1)){
						scope.form.newStatus = newValue;
					}
				});

				// open status editing mode
				scope.changeStatus = function(){
					if(scope.editStatus){
						scope.cancelStatusChange();
					}else{
						scope.editStatus = true;
					}
				};

				// save changes to status
				scope.saveStatusChange = function(){
					if(typeof scope.form.newStatus == 'string' && scope.form.newStatus.length > 0){
						scope.status = angular.copy(scope.form.newStatus);	
					}
					scope.editStatus = false;
				};

				// cancel changes to status
				scope.cancelStatusChange = function(){
					scope.form.newStatus = angular.copy(scope.status);
					scope.editStatus = false;
				};

				// save model, accepts status for save (different buttons will pass different statuses)
				scope.save = function(status){
					// if status is defined it will be set
					if(typeof status == 'string' && status.length > 0){
						scope.status = status;
					}


					// instead scope.$apply using $timeout - it will position self in stack for scope.$apply
					$timeout(function(){
						scope.locked = true;
						scope.model.save().then(function(){
							scope.locked = false;
						});
					}, 0);
					
				};

				// call delete modal (confirmation)
				scope.callDelete = function(){
					scope.delete();
				}

				// delete model
				scope.delete = function(){
					$timeout(function(){
						scope.model.delete(scope.model.form.activeContent.id);
					}, 0);
				}


				// DATE
				// ------------------------------------

				var m_names = [
					"January", 
					"February", 
					"March", 
					"April", 
					"May", 
					"June", 
					"July", 
					"August", 
					"September", 
					"October", 
					"November", 
					"December"
				];
				var m_short_names = [
					"Jan", 
					"Feb", 
					"Mar", 
					"Apr", 
					"May", 
					"Jun", 
					"Jul", 
					"Aug", 
					"Sep", 
					"Oct", 
					"Nov", 
					"Dec"
				];

				function pad(num, size) {
					var s = num+"";
					while (s.length < size) s = "0" + s;
					return s;
				}

				scope.dateCreated = new Date();

				scope.$watch('createdAt', function(val){
					scope.dateCreated = new Date(val);
					var date = scope.dateCreated.getDate(),
						month = scope.dateCreated.getMonth(),
						year = scope.dateCreated.getFullYear();
					scope.dateCreatedFormated = date + '-' + m_short_names[month] + '-' + year;
				});

				scope.dateCreatedOpen = function($event) {
					console.log('OPOOOPPPPEEEENNNNN')
					$event.preventDefault();
					$event.stopPropagation();
					scope.dateCreatedOpened = true;
				};

				// !!!
				scope.$watch('dateCreatedOpened', function(val){
					console.log(val, 'dateCreatedOpen');
				});

				scope.dateCreatedOptions = {
					formatYear: 'yy',
					startingDay: 1
				};

				scope.dateFormats = [
					'dd-MMMM-yyyy', 
					'yyyy/MM/dd', 
					'dd.MM.yyyy', 
					'shortDate'
				];
				scope.dateCreatedFormat = scope.dateFormats[0];

				// open date editing mode
				scope.changeDate = function(){
					if(scope.editDate){
						scope.cancelDateChange();
					}else{
						scope.editDate = true;
					}
				};

				// save changes to date
				scope.saveDateChange = function(){

					if(scope.dateCreated.getDate){
						var date = scope.dateCreated.getDate(),
							month = scope.dateCreated.getMonth(),
							year = scope.dateCreated.getFullYear(),
							hours = scope.dateCreated.getHours(),
							minutes = scope.dateCreated.getMinutes(),
							seconds = scope.dateCreated.getSeconds();

						var created_at = year + '-' + pad(month+1, 2) + '-' + pad(date, 2) + ' ' + pad(hours, 2) + ':' + pad(minutes, 2) + ':' + pad(seconds, 2);
						scope.createdAt = created_at;
					}
					
					scope.editDate = false;
				};

				// cancel changes to date
				scope.cancelDateChange = function(){
					scope.dateCreated = new Date(scope.createdAt);
					scope.editDate = false;
				};
			}
		};
	}]);

});