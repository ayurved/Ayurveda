/*
Dock Navigation
Author: Filip Arneric
*/

define(['app', 
		'text!../../templates/hbs/page.hbs', 
		'tweenmax', 
		'smartresize'
		], function(App, Template) {	
	
	//Navigation View
	App.Views.page = Backbone.View.extend({
		el: '#main',
		template: Handlebars.compile(Template),
		animating: false,
		events: {
			'mouseenter #content': 'overContent',
			'mouseleave #content': 'overContent'
		},
		
		overContent: function(){
			var self = this;
			App.Navigation.blurImage(600);	
		},
		
		preload: function(callback){
			var self = this;
			
			src = absurl + '/img/blank.gif';
			App.loader.addImage(src);
			
			App.loader.addCompletionListener(function() { 
				callback();
			})
			
			App.loader.start();
	    },
	    
	    getFetchURL: function(){
			var url = absurl + "/api/page/";
			
			$.each(App.segments, function(key, value){
				url += value + "/";
			});
			return url;
			
		},
		
		setSizes: function(){
			var self = this;
			self.contentWidth = self.$("#content").width();
			self.$(".textContainer").css("height",self.contentWidth);
		},
		
		render: function(callback) {
        	var self = this;    
        		
        	//compile template
            
            self.content = self.template({
            	data: App.view.dataCollection[0].page
            }); 
            
           	self.$el.html(self.content);  
            
            callback && callback();
        },
		
	  	afterRender: function(){
		  	var self = this;
			
			self.setSizes();
			
			//show menu links animation		              
        	self.tlShowMenuLinks = new TimelineMax({
        		paused: true,
				onComplete: function(){
				}
			});
			
  			self.tlShowMenuLinks.staggerTo($(".linkHolder"), .4, {
  				y: 0, 
  				opacity:1
            }, .064);            

	  	},
	    	    
	    initialize: function(){
	    	var self = this;	
	    	self.afterRender();
   		     					
	    }
	    
	});
	
});