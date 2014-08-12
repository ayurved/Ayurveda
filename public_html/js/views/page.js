/*
Page View
Author: Filip Arneric
*/

define(['app', 
		'text!../../templates/hbs/page.hbs', 
		'tweenmax', 
		'smartresize',
		'nicescroll'
		], function(App, Template) {	

	App.Views.page = Backbone.View.extend({
		el: '#main',
		manage: true,
		template: Handlebars.compile(Template),
		animating: false,
		events: {
			'mouseenter #content': 'overContent',
			'mouseleave #content': 'overContent'
		},
		
		overContent: function(){
			var self = this;
			App.Blur.blurImage(600);	
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
			
			url = url.replace(/\/+$/,'');
			
			return url;
			
		},
		
		setSizes: function(){
			var self = this,
				contentDim = App.height * .92,
				innerHeight = $("#innerHolder").height(),
				headlineHeight = $(".headline").height(),
				bottomHeight = $(".bottomSection").height(),
				textHeight = innerHeight - headlineHeight - bottomHeight;
				
			
			contentDim = (contentDim > App.width * .92) ? App.width * .92 : contentDim;	
			
						
			self.$("#content").css({
				height: contentDim,
				width: contentDim
			});
			
			self.$(".bodyText").css("max-height",textHeight);

		},
		
        
        serialize: function() {
		    return {
		    	data: App.view.dataCollection[0].page,
            	parentPage: App.segments[1],
            	hasParent : App.segments[2]
		    };
		},
		
	  	afterRender: function(){
		  	var self = this;
		  	
			self.setSizes();
		
			var t = setTimeout(function(){
				this.$(".bodyText").niceScroll({
	                cursorborder: "none",
	                cursorcolor: "#fff",
	                cursorwidth: 6,
	                background: "transparent",
	                cursorfixedheight: 80,
	                railalign: "right",
	                railpadding: {top:0,right:-20,left:0,bottom:0},
	                horizrailenabled: false,
	                autohidemode: false,
	                mousescrollstep: 30,
	                cursorborderradius: 5,
	                scrollspeed: 50,
	                zindex: 9999999999,
	                directionlockdeadzone: 100
		       });
			},1000);
			
			
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
            
            
            App.Blur.blured = false;
            //App.Main.afterRender();
	  	},
	    	    
	    initialize: function(){
	    	var self = this;	
   		     					
	    }
	    
	});
	
});