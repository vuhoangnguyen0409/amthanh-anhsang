<?php
/**
 * Template Name: News
 **/
get_header();
?>
<!-- Gallery -->
<div class="pt pt-simple align-left">
   <div class="pt-simple__inner is-waypoint">
    <h1 class="pt__title-h fx-txt-b entry-title size-large"><span class="fx-txt-b__text delay-01">Tin Tức</span></h1>
   </div>
</div>
<div class="content content--layout-narrow small-gap news">
   <div class="container container--narrow">


     <?php
     $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
      $args = array(
        'category_name'    => 'tin-tuc',
        'orderby' => 'date',
   		 'post_type'        => 'post',
   		 'post_status'      => 'publish',
   		 'posts_per_page'   => 3,
   		 'paged'=>$paged
      );
      query_posts($args);
  	 ?>
  	<?php if ( have_posts() ):
     while ( have_posts() ) :the_post();
        $thumbnail_id = get_post_thumbnail_id( $post->ID );
        $alt = get_post_meta($thumbnail_id, '_wp_attachment_image_alt', true);?>
        <div class="mod mod-news-1 is-waypoint  is-featured">
         <div class="mod__inner container--full post-8 post type-post status-publish format-standard has-post-thumbnail hentry category-reviews category-uncategorized tag-mixtape tag-soundcloud tag-video">
          <div class="mod__flex">
             <div class="mod__cell mod__left">
              <div class="mod__meta">
               <div class="mod__date"><?php echo get_the_date('Y/m/d'); ?></div>
               <div class="mod__cats"><span class="cat cat-3 "><span class="cat-inner ">Reviews</span></span></div>
              </div>
              <div class="mod__img mod__cell">
               <div class="image"><img src="<?php the_post_thumbnail_url(); ?>" class="mod__thumb fx-load-img" alt="Post Image"></div>
              </div>
             </div>
             <div class="mod__cell mod__right">
              <h2 class="mod__title"><?php the_title() ?></h2>
              <div class="mod__excerpt">
               <?php the_excerpt(); ?>
              </div>
              <div class="mod__readmore">
               <div class="arrow-button arrow-button--right">
                <div class="fx-txt-a">
                   <span class="fx-txt-a__text">Read article</span>
                </div>
                <div class="arrow-button__inner">
                   <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" xml:space="preserve">
                    <g>
                     <line x1="18" y1="0" x2="18" y2="4"></line>
                     <line x1="18" y1="7" x2="18" y2="19"></line>
                     <polyline points="21.7,15.2 18,19.4 14.3,15.2   "></polyline>
                    </g>
                    <path d="M29.8,5.1c3.5,3.2,5.7,7.8,5.7,12.9c0,9.7-7.8,17.5-17.5,17.5S0.5,27.7,0.5,18c0-4.8,2-9.2,5.1-12.4"></path>
                   </svg>
                </div>
               </div>
              </div>
             </div>
          </div>
         </div>
         <div class="mod__bg" style="background-image:url(<?php the_post_thumbnail_url(); ?>);" ></div>
         <a class="mod__click fx-cursor fx-load fx-load-fz fx-load-scroll-after" href="<?php the_permalink(); ?>" data-cursor-class="click"></a>
        </div>
        <?php
        endwhile;
        endif;
        wpex_pagination();?>





    <!-- .navigation -->
   </div>
   <!-- .container -->
</div>
<!-- .content -->

<!-- Footer -->
<?php get_footer();
?>
