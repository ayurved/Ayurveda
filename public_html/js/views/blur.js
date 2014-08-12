/*
Slider View
Author: Filip Arneric
*/
define(['app',
		'pxloader',
		'text!../../templates/hbs/pageSlider.hbs', 
		'stackblur'
		], function(App, PxLoader, Template) {

	App.Views.Blur = Backbone.View.extend({
		
		el: '#slider',	
		template: Handlebars.compile(Template),
		manage: true,
				
		animOptions: {
			speed : 800, 
			variation : 1, 
			blurFactor : 20,
		},
		
		isAnim: false,
		supportCanvas: Modernizr.canvas,
		current: 0,
		blured: false,
			
		events: {
		},
		
		preload: function(callback){
			var self = this;
			
			$.each(App.Images, function(key, value){
				src = absurl + '/uploads/' + value.featured_image.file.url;
				self.loader.addImage(src);
			});
			
			self.loader.addCompletionListener(function() { 
				callback();
			});
						
			self.loader.start();
	    },
				
		changeBlured: function(page){
			this.$bxContainer = $('.bx-container');	
			var self = this,
				$selected = self.$bxContainer.children('canvas[data-pos=' + page + ']');
			
			
			/*
TweenMax.to($('canvas').not($selected), .3, { 
				opacity: 0,
				onComplete: function(){
					
					console.log($selected);
					$selected.show();
					
					TweenMax.to($selected, .3, { 
						opacity: 1,
						onComplete: function(){
							
						}
					});
					
				}
			});
*/
			
			$('canvas').not($selected).stop().fadeOut(320, function(){
				
			});
			
			$selected.stop().fadeIn(320);
			
			self.current = page;
					
		},
		
		
		getValues: function(){
			var self = this;
		
			this.$bxWrapper = $('#bx-wrapper');
	        this.$bxContainer = this.$bxWrapper.find('div.bx-container');
	        this.$bxImgs = this.$bxContainer.children('img');
	        this.bxImgsCount =  this.$bxImgs.length;
	        this.$thumbs = this.$bxWrapper.find('div.bx-thumbs > a').hide();
	        this.$title = this.$bxWrapper.find('h2:first');

		},
		
		blurImage: function(speed, id){	
			
			this.$bxContainer = $('.bx-container');	
			var self = this,
				current = id || self.current,
				speed = speed || self.animOptions.speed,
				$bxImage = self.$bxContainer.children('img[data-pos=' + current + ']'),
            	$bxCanvas = self.$bxContainer.children('canvas[data-pos=' + current + ']');
            
                     	
            // if canvas is supported
            if( self.supportCanvas ){
            	if(!self.blured){
		            $bxCanvas.css( 'z-index', 100 ).show();
	                self.$bxContainer.children('img').stop().fadeOut( speed );
	                self.blured = true;
            	}else{            		
            		self.blured = false;
            		$bxImage.stop().fadeIn(speed, function(){
	            		$bxCanvas.css( 'z-index', 1 ).hide();
	            		
            		})	            	
            	}
			}	          
			
		},	
		
		initSlider: function(){
			
			this.getValues();
			var self = this,
				loaded = 0,
				imgPercent = 100 / self.bxImgsCount;
						
            self.$bxImgs.each( function(i) {
            
            	var $bximg	= $(this),
	                	pos = $bximg.data("pos"),
	                	dim = self.getImageDim( $bximg.attr('src') );
            	
            /*
	++loaded;
            	curPercentage = imgPercent * loaded + "%";
            	$("#loader").css("height", curPercentage);
            	
            	if(curPercentage == "100%"){
	            	$("#loader").remove();
            	}else{
	            	console.log(curPercentage);
            	}
*/
               	
            	var t = setTimeout(function(){
            	
	                $.when( self.createCanvas( pos, dim, $bximg ) ).done( function() {
	                    self.centerImageCanvas($bximg);
	                    pos == (App.segments[2] || App.segments[1]) && $bximg.show();
	                });
	            	
            	},0);
	            	
                
            });

		},
		
		createCanvas: function(pos, dim, img){
			var self = this;
			
			return $.Deferred( function(dfd) {
					
                // if canvas not supported return
                if( !self.supportCanvas ) {
                    dfd.resolve();
                    return false;
                }	
					
                // create the canvas element:
                // size and position will be the same like the fullscreen image
                var $img	= img,
	                imgW	= dim.width,
	                imgH	= dim.height,
	                imgL	= dim.left,
	                imgT	= dim.top,
						
                canvas	= document.createElement('canvas');
					
                canvas.className	= 'bx-canvas';
                canvas.width 		= imgW;
                canvas.height 		= imgH;
                canvas.style.width  = imgW + 'px';
                canvas.style.height = imgH + 'px';
                canvas.style.left	= imgL + 'px';
                canvas.style.top	= imgT + 'px';
                canvas.style.display = 'none';
                // save position of canvas to know which image this is linked to
                canvas.setAttribute('data-pos', pos);
                // append the canvas to the same container where the images are
                self.$bxContainer.append( canvas );
                // blur it using the StackBlur script
                
                //boxBlurImage(pos, "cnv"+pos, 2, false, 1);             
                             
                stackBlurImage( $img.get(0), dim, canvas, self.animOptions.blurFactor, false, dfd.resolve );
				
            }).promise();	
				
		},
		
		getImageDim: function(img){
			var self = this;
			var $img    = new Image();
			
            $img.src    = img;
				
            var $win	= $( window ),
            w_w		= $win.width(),
            w_h		= $win.height(),
            r_w		= w_h / w_w,
            i_w		= $img.width,
            i_h		= $img.height,
            r_i		= i_h / i_w,
            new_w, new_h, new_left, new_top;
						
            if( r_w > r_i ) {
                new_h	= w_h;
                new_w	= w_h / r_i;
            }
            else {
                new_h	= w_w * r_i;
                new_w	= w_w;
            }
						
            return {
                width	: new_w,
                height	: new_h,
                left	: ( w_w - new_w ) / 2,
                top		: ( w_h - new_h ) / 2
            };
            
		},
		
		centerImageCanvas: function(img){
			var self = this;
			
			var $bximg = img,
                dim	= self.getImageDim( $bximg.attr('src') ),
                pos = img.data("pos"),
                $currCanvas	= self.$bxContainer.children('canvas[data-pos=' + pos + ']'),
                styleCSS = {
                    width	: dim.width,
                    height	: dim.height,
                    left	: dim.left,
                    top		: dim.top
                };	
					
            $bximg.css( styleCSS );
            if( self.supportCanvas ) $currCanvas.css( styleCSS );
	
		},
		
		afterRender: function(){
		  	var self = this;
		  	
		  	self.preload(function(){
		  		self.initSlider();
		  	});
			
		},
		
		serialize: function() {
		    return {
		      images: App.Images
		    };
		},
		
		handleResize: function(){
			var self = this;
			
			$(".bxImg").each(function(key, value){
                self.centerImageCanvas($(value));
            });
		},
		
		initialize: function(){
			var self = this;
			
			self.loader = new PxLoader();
			
			$( window ).on('resize.BlurBGImage', function( event ) {		
                self.handleResize();
            });
		}
		
	});		
	
}); 