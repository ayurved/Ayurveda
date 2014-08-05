define(['jquery', 
		'underscore', 
		'backbone', 
		'handlebars', 
		'layoutmanager', 
		'bootstrap', 
		'modernizr', 
		'gsap', 
		'tweenmax'
		], function ($, _, Backbone) {

	//layout configuration
	Backbone.Layout.configure({
		renderTemplate: function(template, context) {
			if(!App.firstInit || 1==1){
				return template(context);
		  	}
		}
	});

	//Define the collection and model
	var pageModel = Backbone.Model.extend({
		idAttribute: "content_id"
	});
		  	  	
  	var setupCollection = Backbone.Collection.extend({
        url: absurl + "/api/setup",
        model: pageModel
    });
    
    var App = {
        Views: {},
        Layouts: {},
        Collections: {
	        Setup: new setupCollection()
        },   
        segments: {},
        options: {},   
        firstInit: true,
        baseurl: absurl,
        ie: isIE(),
        oldIe: (!isIE11 && isIE()) 
    };

    App.vent = _.extend({}, Backbone.Events);
   
   	if(App.ie) $('html').addClass('ie');
    if(isIE11) $('html').addClass('ie11');
    
    console.log("%cDeveloped by Filip Arnerić", "color: #3d3b46; font-size: 18px");  

    return App;
});