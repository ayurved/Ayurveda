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
/* 			'click .bx-thumbs a': 'changePhoto', */
/* 			'click #blurIt': 'blurImage' */
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
			//return absurl + "/api/page/cs/dockpark";
		},
		
				
		changeBlured: function(page){
			this.$bxContainer = $('.bx-container');	
			var self = this,
				$selected = self.$bxContainer.children('canvas[data-pos=' + page + ']');
				
			$('canvas').not($selected).stop().fadeOut(620, function(){
			});
			
			self.current = page;
			
			$selected.stop().fadeIn(420);
		},
		
		changePhoto: function(e){
			var self = this;
			
			var $thumb = $(e.currentTarget),
           		 pos = $thumb.index(),
           		 src = $thumb.data("large");
			
            if( !self.isAnim && pos !== self.current) {
					
                self.$thumbs.removeClass('bx-thumbs-current');
                $thumb.addClass('bx-thumbs-current');
                self.isAnim = true;
                
                self.renderNewPhoto(src);			
            }
			
            return false;
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
		
		renderNewPhoto2: function(src, blured){
			var self = this,
				next = self.current + 1;
				
			var $img = $('<img data-pos="'+next+'" src="'+ src +'"/>');
			
			$img.load(function(){
				var $img	= $(this),
	                dim		= self.getImageDim( $img.attr('src') ),
	                pos		= $img.data( 'pos' );
	             
	            // add the canvas to the DOM
                $.when( self.createCanvas( pos, dim, $img ) ).done( function() {  
                    
                  	self.centerImageCanvas($img);
                  	
                  	prev = pos -1;
                  	
                  	$bxCanvas = self.$bxContainer.children('canvas[data-pos=' + prev + ']');
                  	$bxCanvas.css( 'z-index', 100 ).show();
                  	
                  	$prevImg = self.$bxContainer.children('img[data-pos=' + self.current + ']');
                  	$prevCanvas = self.$bxContainer.children('canvas[data-pos=' + self.current + ']');
                  	
                  	$.when( $prevImg.fadeOut( self.animOptions.speed  ) ).done( function() {
	                  	$.when( $img.fadeIn( self.animOptions.speed  ) ).done( function() {
		                  	$prevImg.remove();
		                  	$prevCanvas.remove();
	                        self.current = pos;
	                        self.isAnim = false;
	                  	})
                  	});
                  	
                });

			});
			
			self.$bxContainer.append($img);
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
			
			var self = this;
			self.getValues();
						
            self.$bxImgs.each( function(i) {
     
                var $bximg	= $(this),
                	pos = $bximg.data("pos"),
                	dim = self.getImageDim( $bximg.attr('src') );
                
                $.when( self.createCanvas( pos, dim, $bximg ) ).done( function() {
                    self.handleResize();
                    pos == (App.segments[2] || App.segments[1]) && $bximg.show();
                });
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
			
			var $bximg	= img,
                dim			= self.getImageDim( $bximg.attr('src') ),
                $currCanvas	= self.$bxContainer.children('canvas[data-pos=' + $bximg.index() + ']'),
                styleCSS	= {
                    width	: dim.width,
                    height	: dim.height,
                    left	: dim.left,
                    top		: dim.top
                };	
					
                $bximg.css( styleCSS );
					
                if( self.supportCanvas )
                    $currCanvas.css( styleCSS );
				
                //$bximg.show();
	
		},
		
		beforeRender: function(){
			
		},
		
		afterRender: function(){
			this.initSlider();
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
		
		showImage: function(pos){
			var self = this;
			
			// current image 
            var $bxImage		= self.$bxImgs.eq( self.current );
            // current canvas
            $bxCanvas		= self.$bxContainer.children('canvas[data-pos=' + $bxImage.index() + ']'),
            // next image to show
            $bxNextImage	= self.$bxImgs.eq( pos ),
            // next canvas to show
            $bxNextCanvas	= self.$bxContainer.children('canvas[data-pos='+$bxNextImage.index()+']');
				
            // if canvas is supported
            if( self.supportCanvas ) {
				
                $.when( self.$title.fadeOut() ).done( function() {
                    self.$title.text( $bxNextImage.attr('title') );
                });
				
                $bxCanvas.css( 'z-index', 100 ).css('visibility','visible');
					
                $.when( $bxImage.fadeOut( self.animOptions.speed ) ).done( function() {
						
                    switch( self.animOptions.variation ) {
						
                        case 1 	:
                            self.$title.fadeIn( self.animOptions.speed );
                            $.when( $bxNextImage.fadeIn( self.animOptions.speed ) ).done( function() {
							
                                $bxCanvas.css( 'z-index', 1 ).css('visibility','hidden');
                                self.current = pos;
                                $bxNextCanvas.css('visibility','hidden');
                                self.isAnim 	= false;
								
                            });
                            break;
                        case 2	:
                            $bxNextCanvas.css('visibility','visible');
								
                            $.when( $bxCanvas.fadeOut( self.animOptions.speed * 1.5 ) ).done( function() {
								
                                $(this).css({
                                    'z-index' 		: 1,
                                    'visibility'	: 'hidden'
                                }).show();
									
                                $title.fadeIn( self.animOptions.speed );
									
                                $.when( $bxNextImage.fadeIn( self.animOptions.speed ) ).done( function() {
										
                                    self.current = pos;
                                    $bxNextCanvas.css('visibility','hidden');
                                    self.isAnim 	= false;
									
                                });
									
                            });
                            break;
						
                    };
						
                });
				
            }
            // if canvas is not shown just work with the bg images
            else {
					
                $title.hide().text( $bxNextImage.attr('title') ).fadeIn( animOptions.speed );
                $.when( $bxNextImage.css( 'z-index', 102 ).fadeIn( animOptions.speed ) ).done( function() {
						
                    self.current = pos;
                    $bxImage.hide();
                    $(this).css( 'z-index', 101 );
                    self.isAnim = false;
					
                });
				
            }	
		},
		
		initialize: function(){
			var self = this;
			
			$( window ).on('resize.BlurBGImage', function( event ) {		
                self.handleResize();
            });
		}
		
	});		
	
}); 