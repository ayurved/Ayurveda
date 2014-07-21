define([
	'jquery',
	'angular',
    'app/pages/app'
], function ($, angular, App) {

    App.controller('pagesController', ['$scope', 'Language', 'Page',  function($scope, Language, Page){

        $scope.baseUrl = CB.site_url;
        $scope.languages = [];
        $scope.activeLanguage = {};


        // Languages
        // ------------------------------------------------------
        
        // get langauges 
        Language.get().then(
            function(response){
                $scope.languages = response;
                $scope.setActiveLanguage(Language.getByCode('cs'));
            },
            function(response){
                console.log(response, 'pagesController - languages not loaded');
            }
        );

        // active language setter 
        $scope.setActiveLanguage = function(lang){
            $scope.activeLanguage = lang;
        };

        // language filter
        $scope.filterByLanguage = function(item){
            var lang_id = $scope.activeLanguage.id;
            
            // @TO_DO abstract this if condition to a function
            if (_.findWhere(item.post_contents, {language_id: lang_id})) {
                return true;    
            }
            return false;
        };

        // Status filters
        // ------------------------------------------------------

        // define status filters
        $scope.statusfilters = {
            all: {
                label: 'All',
                filter: {
                    status : '*'
                }
            },
            published: {
                label: 'Published',
                filter: {
                    status : 'publish'
                }
            },
            draft: {
                label: 'Draft',
                filter: {
                    status : 'draft'
                }
            }
        };
        // default filter
        $scope.activeStatusFilter = $scope.statusfilters.all;
        // set active fitler
        $scope.setActiveStatusFilter = function(status){
            $scope.activeStatusFilter = status;
            console.log(status);
        }

        // filter posts by status 
        $scope.filterByStatus = function(item){
            var status = $scope.activeStatusFilter.filter.status;

            if ( item.status == status || status == '*') {
                return true;    
            }
            return false;
        }

        // Seach
        // ------------------------------------------------------
        $scope.searchText = '';

        function escapeRegExp(string){
            return string.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
        }
        var regex;

        $scope.$watch('searchText', function (value) {
            regex = new RegExp('\\b' + escapeRegExp(value), 'i');
        });
        
        $scope.filterBySearch = function(item) {
            if (!$scope.searchText) return true;

            var searchFields, 
                lang_id = $scope.activeLanguage.id
                post_content = getPostContentByLangId(item, lang_id),
                found = false;

            if (!post_content) return false

            // define search fields
            searchFields = [
                //post_content.url,
                //post_content.name,
                post_content.title
            ];

            found = _.some(searchFields, function(field){
                if (regex.test(field)) { return true; }
                return false;
            });

            return found;
        };

        // Posts 
        // ------------------------------------------------------
        
        $scope.model = {};

        var PageModel = new Page();
        PageModel.getAll().then(function(data){
            $scope.model.pages = data;
        }, function(data){
            console.log(data, 'error');
        });

        // helper functions 
        // ------------------------------------------------------

        // language 
        // -------------------------

        // post
        // -------------------------

        var getPostContentByLang = function(post, lang){
            var lang_id = lang.id;
            return getPostContentByLangId(post, lang_id);
        };

        var getPostContentByLangId = function(post, lang_id){
            var post_content = _.find(post.post_contents, function(post_content){ 
                return post_content.language_id == lang_id; 
            });
            return post_content;
        };

    }]);

    


});