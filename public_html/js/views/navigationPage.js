/*
Dock Navigation
Author: Filip Arneric
*/

define(['app', 
		'text!../../templates/hbs/navigationPage.hbs', 
		'tweenmax', 
		'smartresize'
		], function(App, Template) {	
	
	//Navigation View
	App.Views.navigationPage = Backbone.View.extend({
		el: '#main',
		template: Handlebars.compile(Template),
		animating: false,
		events: {
			'mouseover .linkHolder': 'moveHover'
		},
		
		moveHover: function(e){
			var self = this,
				target = $(e.currentTarget),
				index = target.index(),
				top = index * target.height(),
				slide = target.data("slide");
			
			var t = setTimeout(function(){
				App.Blur.changeBlured(slide, true);
			},0);
				
			TweenMax.to($(".hover"), .3, { 
	  			y: top
	  		});	
			
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
			/*

			var linkHeight =$("#massages-container").height() / 10;
			$(".linkHolder").css("height", linkHeight);
*/
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
			
			App.Blur.blured = false;
			App.Blur.blurImage(200);
			
	  	},
	    	    
	    initialize: function(){
	    	var self = this;	
	    	self.afterRender();
   		     					
	    }
	    
	});
	
});