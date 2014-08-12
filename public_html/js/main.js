/*
Ayurveda - Main View
Copyright Kitchen S.R.O. May 2014. 
Author: Filip Arneric
*/

define(['app', 
		'pxloader', 
		'tweenmax',
		'smartresize',
		'imgLiquid',
		'fittext', 
		'fastclick', 
		'helpers'], function(App, PxLoader) {
	
	 App.Views.Main = Backbone.View.extend({   
	    el: 'body',
	    
	    events: {
	        'click .links' : 'changeRoute',
	        'click .langLink' : 'changeLang'
	    }, 
	    
	    setSizes: function(){
	    	var self = this;    		    	
		    App.width = $(window).width();
		    App.height = window.innerHeight || $(window).height();
		    
		    if(App.view) App.view.setSizes && App.view.setSizes();
		},	
		       
        destroy_view: function() {     	
		    App.view.undelegateEvents();
		    App.view.$el.removeData().unbind();	    
		    App.Common.destroy_view();
		    App.view.destroy_view && App.view.destroy_view();	    		    
	    },

		render: function(){
			var self = this;
			var	$navbar = $(".navbar-collapse"),
				angle = (self.view && self.view.angle) ? self.view.angle + 90 : '90';

			self.$el.removeAttr("class").addClass(App.options.lang);
			self.view && self.destroy_view();			
			
			App.Blur.current = App.segments[2] || App.segments[1];  
			
			if(App.Navigation.opened){
				var blured = (App.segments[1] == 'massages');
				App.Navigation.toggleNav(false,true, blured);
				App.Blur.blured = false;
				self.define_fetch();
			}else{
				TweenMax.to($("#main"), .3, { 
					opacity: 0,
					onComplete: function(){
						self.define_fetch();
					}
				});
			}
			   
		}, 
		
		define_fetch: function(){
			var self = this;
			
			//destroy the previous view
			App.view && self.destroy_view();
			
			//define view and collection then render
			App.view = new App.Views[App.options.view];		
			
			 //fetch the data if needed if not render page
		    if(App.view.getFetchURL){
		    	
			  	App.Collections[App.viewName] = Backbone.Collection.extend({
			        url: App.view.getFetchURL()
			    });	    
			      
			    App.view.collection = new App.Collections[App.viewName];	
				App.view.collection.fetch({
	                reset: true,
	                success: function() {
	                	App.view.dataCollection = App.view.collection.toJSON();
	                    self.renderPage();
	                }
	            });
	            
		    }else{
			    self.renderPage();
		    }
		   			
		},
		
		renderPage: function(){
	    	var self = this;
	    
	    	//change page title
	    	if(App.view.dataCollection && App.view.dataCollection[0].meta){
		  		document.title = "Ayurveda - " + App.view.dataCollection[0].meta.meta_title;
		  	}
		  	
		  	App.view.render();
		  	self.afterRender();
		 
		},
		
		afterRender: function(){
			var self = this;
			
			App.firstInit = false;	
			$("#main").show();
			App.Common.fittext();
			//Delegate events
			App.view.delegateEvents();
			App.Common.delegateEvents();	
			FastClick.attach(document.body);
			
			var t = setTimeout(function(){
				TweenMax.to($("#main"), .3, { opacity: 1 });
			},400);
	  		
		},
	  		    
	    changeRoute: function(e) {
	    	e.preventDefault();
	    	var self = this,
    			target = $(e.currentTarget),
    			href = target.attr("href").replace(absurl,''),
    			rootLength = Backbone.history.options.root.length,
    			fragment = window.location.pathname.substr(rootLength - 1 );
    		
    		if(fragment != href){
    			_gaq.push(['_trackPageview', escape(href)]);
    			App.Router.navigate(href, true);
    		}else{
	    		App.Navigation.toggleNav();	
    		}
        	
	    },
	    
	    changeLang: function(e){
	    	e.preventDefault();
	    	var lang = $(e.currentTarget).data("lang"),
	    		cur = (window.location.pathname),
	    		newPage = cur.replace(App.options.lang, lang),
	    		href = (_.filter(App.Routes, function(data){ return data.url == href.substr(1) })[0]) ? href : lang + "/" + App.pageName;
	    			    	
	    	App.Router.navigate(href, true);	  
	    	App.Views.navigation.render(); 	    	
	    },
	    
	    initialize: function(){	    	
	    	var self = this;
	    	
	    	self.setSizes();
	    	
	    	//handle resize
            $(window).on('smartresize', function() {
            	self.setSizes();
            });
            
            //secret msg
            $( window ).konami({
		        cheat: function() {
		        	alert("hjuston master");
		        }
		    });

	  
	    }
	
	});		
	
})