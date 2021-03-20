<?php get_header();
?>
	  <div class="rt-player-audio" data-audio="https://rascalsthemes.com/demo/vex/audio/Turbo.mp3"></div>
	  <div class="content--horizontal albums">
		 <div class="fx-perspective fs">
			<div class="fs__image fx-perspective__image" style="background-image: url(<?php bloginfo('template_directory');?>/img/bg/parallax-bg.jpg)"></div>
			<div class="fade-layer" style="opacity:0.7"></div>
			<div id="fs-scroll" class="fs-scroll--h">
			   <div id="fs-scroll__content">
				  <div class="albums-grid grid-albums-horizontal">

						<?php $args = array(
								'posts_per_page'   => 10,
								'offset'           => 0,
								'category'         => 'amthanh-anhsang',
								'category_name'    => '',
								'orderby'          => 'post_date',
								'order'            => 'ASC',
								//'order'            => 'DESC',
								'include'          => '',
								'exclude'          => '',
								'meta_key'         => '',
								'meta_value'       => '',
								//'post_type'        => 'news',
								'post_type'        => '',
								'post_mime_type'   => '',
								'post_parent'      => '',
								'post_status'      => 'publish',
								'suppress_filters' => true
							);
							$posts_array = get_posts( $args );
		        	foreach ( $posts_array as $post ) : setup_postdata( $post );
								$thumbnail_id = get_post_thumbnail_id( $post->ID );
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
							<?php endforeach; ?>
				  </div>
			   </div>
			   <!-- #fs-scroll__content -->
			</div>
			<!-- #fs-scroll -->
		 </div>
		 <!-- .fx -->
	  </div>
	  <!-- .content -->
<?php get_footer(); ?>
