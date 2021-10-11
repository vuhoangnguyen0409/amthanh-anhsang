<?php get_header();
?>
<a href="#" class="prev"></a>
<a href="#" class="next"></a>
	  <div class="content--horizontal albums" id="scroll-custom">
	 
		 <div class="fx-perspective fs">
			<div class="fs__image fx-perspective__image" style="background-image: url(<?php bloginfo('template_directory');?>/img/bg/parallax-bg.jpg)"></div>
			<div class="fade-layer" style="opacity:0.7"></div>
			<div id="fs-scroll" class="fs-scroll--h">
			   <div id="fs-scroll__content">
				  <div class="albums-grid grid-albums-horizontal">
				  
				    <div class="scroll-prev" style="transform: translateX(0);">
				    <div class="scroll-next" style="transform: translateX(0);">

                      <?php
                      if (have_posts()): while(have_posts()): the_post();
                      $alt = get_post_meta($thumbnail_id, '_wp_attachment_image_alt', true);?>

								<div class="scroll-item is-waypoint fx-scale-from-right delay-05">
		 						<div class="mod mod-album-2 album-item">
		 						   <div class="mod__inner post-254 vex_albums type-vex_albums status-publish has-post-thumbnail hentry">
		 							  <div class="mod__img">
		 								 <div class="ithumb ithumb-perspective">
		 									<a href="<?php the_permalink(); ?>" class="fx-cursor fx-load fx-load-fi" data-cursor-class="click">
		 									  <div class="ithumb-perspective__img">
		 										  <div class="img waypoint-delay">
		 											 <img src="<?php the_post_thumbnail_url(); ?>" alt="<?php echo $alt; ?>" class="fx-load-img">
		 										  </div>
		 									   </div>
		 									   <div class="mod-title ithumb-perspective__title h2-line">
		 										  <h2 class="mod-title__h fx-txt-b"><span class="fx-txt-b__text delay-06"><?php the_title() ?></span></h2>
		 									   </div>
		 									</a>
		 								 </div>
		 							  </div>
		 						   </div>
		 						</div>
		 					 </div>
                             <?php
                             // End loop.
                             endwhile;

                         // No value.
                         else :
                             // Do something...
                         endif;?>
				  </div>
			   </div>
			   <!-- #fs-scroll__content -->
			    </div>
				</div>
			</div>
			<!-- #fs-scroll -->
		 </div>
		 
		 
		 <!-- .fx -->
	  </div>
	  <!-- .content -->
<?php get_footer(); ?>
