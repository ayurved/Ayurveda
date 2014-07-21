/*
Dock Common
Author: Filip Arneric
*/

define(['app'], function(App) {

    App.Views.Common = Backbone.View.extend({
        el: 'body',
        loaded: false,
        events: {
        	"click .fbShare": "fbShare"
        },

	    destroy_view: function(){
	    	this.stopAni = true;
	    	this.loaded = false;
	    	this.undelegateEvents();
	    },

	    fbShare: function(e){
            e.preventDefault();
            var url = document.URL;
            window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(url),'sharer','toolbar=0,status=0,width=626,height=436');
            return false;
        },
        
	    
	    liquid: function(container){
	    	var self = this,
	    		$container = container || self.$el;
	    	
		  	$container.find(".liquid").each(function() {
                var _this = $(this);
                
                _this.imgLiquid({
    		        fadeInTime: 200,
    		        responsive: true,
    		        fill: !_this.hasClass('contain'),
    		        horizontalAlign: "center",
    		        verticalAlign: "center"
    		    });  
            });
	    },
	    
	    scroller: function(){
	    	if(!$.browser.mobile && !isiPad){
	            this.$("#scroller").niceScroll({
	                cursorborder: "none",
	                cursorcolor: "#a27d22",
	                cursorwidth: 4,
	                railalign: "left",
	                horizrailenabled: false,
	                autohidemode: false,
	                mousescrollstep: 30,
	                cursorborderradius: 0,
	                scrollspeed: 50,
	                zindex: 9999999999,
	                directionlockdeadzone: 100
	            });
	            self.$(".nicescroll-rails").addClass("hidden");
	            App.niceScroll = $("#scroller").getNiceScroll()[0];
	         }
	    },
	    
	   	    
	    fittext: function(container){
		    var self = this;
            container = container || self.$el;
            var elems = container.find(".fittext");
            var nonFit = container.find("")
            elems.each(function (key, index) {
                var text = $(index),
                    datafit = text.data('fit'),
                    max = text.data('max') + 'px',
                    min = text.data('min') + 'px' || "10px",
                    val = (0.16 * datafit);
                text.fitText(val, {
                    minFontSize: min,
                    maxFontSize: max,
                    resize: true
                });
            });
    
	    },

        initialize: function() {
            var self = this;
            _.bindAll(this, 'render');
        }

    });

}); 