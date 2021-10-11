/**
 * Frontend Toolkit JS
 *
 * @author Rascals Themes
 * @category JavaScripts
 * @package Vex Toolkit
 * @version 1.0.0
 */


var themeToolkit = (function($) {

    "use strict";

  	// Variables
    const doc = document;
    let toolkitVars = {
		ajaxReload : false,
		isAjax: false,
	};

  	/* Init
     -------------------------------- */

    if ( $( 'body' ).hasClass('AXloader') ) {
		toolkitVars.isAjax = true;
	}

    /* Ajax: Enabled */
    doc.addEventListener('AXEnd', function(customEvent) {
    	if ( toolkitVars.ajaxReload ) {
    		themeToolkit.reload($);
    	}
    	toolkitVars.ajaxReload = true;

    });
    doc.addEventListener('AXStart', function(customEvent) {
    	if ( toolkitVars.ajaxReload ) {
    		themeToolkit.loadStart($);
    	}

    });

    doc.addEventListener("DOMContentLoaded", function() {
        themeToolkit.init($);
    });


    return {

        loaded : false,

        /* Init
         -------------------------------- */
        init : function(){
    		this.woo.cart.init();
        	this.woo.cart.addToCartButton();
        	this.woo.products.filters();
        	this.woo.quantity();
        	this.woo.tabs();

            this.lightbox.init();
            this.events.list();
            this.player.init();
            this.disqus();
        },
        reload: function() {
        	this.woo.removeEvents();
        	this.woo.tabs();
        	this.woo.products.filters();

            this.lightbox.init();
            this.events.list();
            this.player.update();
            this.disqus();
        },

     	loadStart: function() {
        },

        /* ==================================================
          WooCommerce
        ================================================== */
        woo: {

        	quantity : function() {

        		$('body').on( 'click', '.wc-quantity .plus, .wc-quantity .minus', function() {

	            // Get current quantity values
	            let
	            	qtyWrap = $( this ).closest( '.wc-quantity' ),
	            	qty = qtyWrap.find( '.qty' ),
	           		val = parseFloat(qty.val()),
	           		max = parseFloat(qty.attr( 'max' )),
	           		min = parseFloat(qty.attr( 'min' )),
	           		minStep = 1,
	           		step = parseFloat(qty.attr( 'step' ));

	  			if ( qtyWrap.hasClass('is-cart-page') ) {
	  				minStep = 0;

	  			}
	            // Change the value if plus or minus
	            if ( $( this ).is( '.plus' ) ) {
					if ( max && ( max <= val ) ) {
						qty.val( max );
					} else {
						qty.val( val + step );
					}
	            } else {
					if ( min && ( min >= val ) ) {
						qty.val( min );
					} else if ( val > minStep ) {
						qty.val( val - step );
					}
	            }
	            // Trigger change event
            	qty.trigger( 'change' );

         });
        	},

        	products : {

        		filters : function() {

        			if ( ! $('.wc-filters').length ) {
        				return false;
        			}

        			//  Ajax
        			let isAjax = true;

        			// Pretty permalinks
        			let prettyPermalinks = true;
        			if ( $('.wc-filters').data('data-permalinks-structure') === 'base' ) {
        				prettyPermalinks = false;
        			}

        			// Categories
        			$( '.wc-filters' ).on( 'change', '.js-wc-filter select', function(event) {
        				let thisPermalink = $(this).parent().data('permalinks');
        				let val = $(this).val();
    					let thisUrl = '';
    					let goToUrl = '';
    					let shopUrl = $(this).find("option:first-child").val();

    					if ( ! prettyPermalinks ) {
    						thisUrl = window.location.hostname;
    						goToUrl = toolkitOptions.siteUrl + '/' + val + '';
    					} else {
    						thisUrl = window.location.hostname;
    						goToUrl = toolkitOptions.siteUrl + '/' + thisPermalink + '/'  + val;
    					}

    					// Go to the shop page if is selected default value
    					if ( val === shopUrl ) {
    						goToUrl = shopUrl;
    					}
    					if ( toolkitVars.isAjax ) {
    						AXloader.loadUrl( goToUrl );
    					} else {
    						window.location = goToUrl;
    					}

        			});

        			// Only if Ajax is enabled
    				if ( toolkitVars.isAjax ) {

    					// Ordering
        				$( '.woocommerce-ordering' ).off( 'change', 'select.orderby' );
        				$( '.woocommerce-ordering' ).on( 'change', 'select.orderby', function() {

        					let val = $(this).val();
        					let thisUrl = ''
        					let goToUrl = '';

        					if ( ! prettyPermalinks ) {
        						thisUrl = window.location.href.split('?')[0];
        						goToUrl = thisUrl + '?orderby='+val+'&paged=1&post_type=product';
        					} else {
        						thisUrl = window.location.href.split('?')[0];
        						goToUrl = thisUrl + '?orderby=' + val;
        					}

        					AXloader.loadUrl( goToUrl )
						});
    				}


        		}
        	},

        	cart : {

        		init :  function() {

        			// Events
        			$( 'body' ).on( 'updated_cart_totals', themeToolkit.woo.cart.update );
					$( 'body' ).on( 'removed_from_cart', e=>{
						if ( $( '.woocommerce-cart-form .qty' ).first() ) {
							$( '.woocommerce-cart-form .qty' ).first().trigger( 'change' );
						};
						$( "[name='update_cart']" ).trigger( "click" );
						themeToolkit.woo.cart.update();

					});

					$( 'body' ).on( 'added_to_cart', (event, fragments, cart_hash, $button)=>{
						themeToolkit.woo.cart.update();
					});

        			$( 'body' ).on('click', '.js-cart-button', function(e){
        				$( '.js-cart-widget' ).toggleClass('visible');
        				e.preventDefault;
        			});
        			$( 'body' ).on('click', '.js-cart-widget-close, .woocommerce-mini-cart__buttons a, .mini-cart-item-title a', function(e){
        				$( '.js-cart-widget' ).removeClass('visible');
        				e.preventDefault;
        			});
        		},

        		update : function() {

    			 	$.ajax({
	                    url: ajax_action.ajaxurl,
	                    type: 'post',
	                    data: {
	                        action: 'vex_toolkit_update_cart',
	                        ajax_nonce: ajax_action.ajax_nonce,
	                    },
	                    success: function(result) {

	                        if (result === 'Busted!') {
	                            location.reload();
	                            return false;
	                        }

	                        if ( $('.js-cart-counter') ) {
	                        	$('.js-cart-counter').text( result );
	                        	$('.js-cart-counter').addClass('cart-updated').delay(1000).queue(function(){
								    $(this).removeClass('cart-updated').dequeue();
								});
	                        }

	                    },
	                    error: function(request, status, error) {
	                    	console.log(error);
	                    }
	                });

        		},

        		addToCartButton : function() {

        			// Overwrite default event
        			$( document ).on( 'click', '.single_add_to_cart_button:not(.product_type_variable)', function(e) {
						e.preventDefault();
				        let $thisbutton = $(this);
				        let $form = $thisbutton.closest('form.cart');
				        if ( $thisbutton.hasClass('loop_add_to_cart') ) {
				        	$form = $thisbutton.closest('.wcp-button');
				        }

				        let id = $thisbutton.val(),
			                product_qty = $form.find('input[name=quantity]').val() || 1,
			                product_id = $form.find('input[name=product_id]').val() || id,
			                variation_id = $form.find('input[name=variation_id]').val() || 0;

				        let data = {
				            action: 'vex_toolkit_add_to_cart_button',
				            product_id: product_id,
				            product_sku: '',
				            quantity: product_qty,
				            variation_id: variation_id,
				        };

				        $(document.body).trigger('adding_to_cart', [$thisbutton, data]);

				        $.ajax({
				            type: 'post',
				            url: ajax_action.ajaxurl,
				            data: data,
				            beforeSend: function (response) {
				                $thisbutton.removeClass('added').addClass('wc-loading');
				            },
				            complete: function (response) {
				                $thisbutton.addClass('added').removeClass('wc-loading');
				                $thisbutton.remove();
				            },
				            success: function (response) {

				                if (response.error && response.product_url) {
				                    window.location = response.product_url;
				                    return;
				                } else {
				                    $(document.body).trigger('added_to_cart', [response.fragments, response.cart_hash, $thisbutton]);
				                }
				            },
				        });

				        return false;
					});

        		}


        	},


        	tabs : function() {
        		let tabs = document.querySelectorAll('.woocommerce-tabs li a');
        		for ( let t of tabs ) {
        			t.addEventListener('click', (e) => {
        				let li = t.parentNode;
        				let id = t.getAttribute('href');
        				let panel = document.querySelector(id);
        				let oldTab = document.querySelector('.woocommerce-tabs li.active');
        				let oldTabLink = oldTab.querySelector('a');
        				let oldId = oldTabLink.getAttribute('href');
        				let oldPanel = document.querySelector(oldId);
        				// Remove Old Tab
        				oldPanel.style.display = 'none';
        				oldTab.classList.remove('active');
        				// Active Current
        				li.classList.add('active');
        				panel.style.display = 'block';
        				e.stopImmediatePropagation();
        				e.preventDefault();
        			});
        		}

        	},
        	removeEvents : function() {
        		jQuery('body').off('init', '#rating');
    			jQuery( document ).off( 'wc_update_cart added_to_cart' );

        	}

        },


        /* ==================================================
            BasicLightbox
        ================================================== */
        lightbox : {

            init : function() {
                let lb = themeToolkit.lightbox;
                if ( document.querySelector('.fx-lightbox') ) {
                    const boxes = document.querySelectorAll('.fx-lightbox');
                    for ( let box of boxes ) {
                        box.addEventListener( 'click', e => {
                            let lbId = box.getAttribute('data-lb-id');
                            if ( lbId === false || lbId === null ) {
                                return;
                            }
                            let content = document.querySelector('#'+lbId);
                            if ( content ) {
                                let bl = basicLightbox.create(
                                    content.innerHTML, {
                                        className: 'fx-cursor fx-cursor-close',
                                    }
                                );
                                bl.show(() => {
                                    document.querySelector('.basicLightbox .lightbox__inner').addEventListener('click', ()=> bl.close() );
                                    theme.cursor.update('.basicLightbox');
                                    if ( document.querySelector('#cursor') ) {
                                        document.querySelector('#cursor').classList.add('close');
                                    }

                                });
                            }
                        });
                    }
                }
            },

        },


        /* ==================================================
          Events
        ================================================== */
        events : {

            init : function() {
                let event = themeToolkit.events;

            },
            list: function() {
                if ( document.querySelector('.events-list .event-list-item') ) {
                    let listEvents = document.querySelectorAll('.events-list .event-list-item');
                    let listContainer = document.querySelector('.events-list');

                    for (let ev of listEvents) {
                         ev.addEventListener("mouseover", e => {
                            listContainer.classList.add('is-hover');
                            ev.classList.add('is-active');
                        });
                        ev.addEventListener("mouseout", e => {
                            listContainer.classList.remove('is-hover');
                            ev.classList.remove('is-active');

                        });
                    }
                }

            },

        },


        /* ==================================================
          Disqus
        ================================================== */
        disqus : function() {
            let disqus = document.querySelector('#disqus_thread');
            if (disqus) {

                let disqusIdentifier = document.querySelector('#disqus_thread').getAttribute('data-post_id')
                  , disqusShortname = document.querySelector('#disqus_thread').getAttribute('data-disqus_shortname')
                  , disqusTitle = document.querySelector('#disqus_title').textContent
                  , disqusUrl = window.location.href
                  , protocol = location.protocol;
                /* * * Disqus Reset Function * * */
                if (typeof DISQUS !== 'undefined') {
                    DISQUS.reset({
                        reload: true,
                        config: function() {
                            this.page.identifier = disqusIdentifier;
                            this.page.url = disqusUrl;
                            this.page.title = disqusTitle;
                        }
                    });
                } else {
                    let dsq = document.createElement('script');
                    dsq.type = 'text/javascript';
                    dsq.async = true;
                    dsq.src = protocol + '//' + disqusShortname + '.disqus.com/embed.js';
                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                }
            }
        },


        /* ==================================================
          Helpers
        ================================================== */
        getClosest : function (elem, selector) {

            // Element.matches() polyfill
            if (!Element.prototype.matches) {
                Element.prototype.matches =
                    Element.prototype.matchesSelector ||
                    Element.prototype.mozMatchesSelector ||
                    Element.prototype.msMatchesSelector ||
                    Element.prototype.oMatchesSelector ||
                    Element.prototype.webkitMatchesSelector ||
                    function(s) {
                        var matches = (this.document || this.ownerDocument).querySelectorAll(s),
                            i = matches.length;
                        while (--i >= 0 && matches.item(i) !== this) {}
                        return i > -1;
                    };
            }

            // Get the closest matching element
            for ( ; elem && elem !== document; elem = elem.parentNode ) {
                if ( elem.matches( selector ) ) return elem;
            }
            return null;

        },

    }

}(jQuery));
