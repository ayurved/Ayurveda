define([
    'app',
    'main',
       
    //layouts
    'views/page',
    //.....
    
    //views
    'views/common',
    'views/blur',
    'views/navigation',
    'views/navigationPage',
    
    'router',
], function (App) {
	
    App.Collections.Setup.fetch({
        success: function() {
        	
        	//page list and config
        	App.Setup = App.Collections.Setup.toJSON()[0];
        	App.Routes = App.Setup.routes;
        	App.Translations = App.Setup.translations;
        	App.Languages = App.Setup.languages;
        	
        	//views
        	//App.Views.page = new App.Views.Page;
        			    
		    //init main and router
		    App.Main = new App.Views.Main;	
		    App.Common = new App.Views.Common;  	    
		    App.Blur = new App.Views.Blur;
		    App.Navigation = new App.Views.Navigation;
		    App.Router = new App.Router;
        	
        }
    });	

});