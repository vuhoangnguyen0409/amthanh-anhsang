<?php get_header();
//Template Name: Single News
?>
<?php  if (have_posts()): while(have_posts()): the_post();?>
<div class="pt pt-fs-parallax align-left pt--is-image fx-parallax fx-scroll-fade" style="background-image: url(<?php the_post_thumbnail_url(); ?>); background-position: 50% 0px;">
  <div class="fade-layer" style="opacity: 0;"></div>
  <div class="pt-fs-parallax__inner is-waypoint done">
    <div class="pt-meta meta flex-align-center">
       <div class="meta__date fx-txt-b go-back arrow-button arrow-button--right">
           <span class="fx-txt-b__text delay-01"><a href="javascript:history.back()"><div class="arrow-button__inner">
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" xml:space="preserve">
               <g>
                <line x1="18" y1="0" x2="18" y2="4"></line>
                <line x1="18" y1="7" x2="18" y2="19"></line>
                <polyline points="21.7,15.2 18,19.4 14.3,15.2   "></polyline>
               </g>
               <path d="M29.8,5.1c3.5,3.2,5.7,7.8,5.7,12.9c0,9.7-7.8,17.5-17.5,17.5S0.5,27.7,0.5,18c0-4.8,2-9.2,5.1-12.4"></path>
              </svg>
           </div></a></span>
      </div>
      <div class="meta__date fx-txt-b">
        <span class="fx-txt-b__text delay-02"><?php echo get_the_date('d/m/Y'); ?></span>
      </div>
      <div class="meta__cats fx-txt-b">
        <div class="meta-cats__inner fx-txt-b__text delay-03">
          <a class="cat cat-3 wave-link" href="/" title="View posts from category"><span class="cat-inner "><?php the_author(); ?></span></a> </div>
      </div>
    </div>
    <h1 class="pt__title-h fx-txt-b entry-title size-medium"><span class="fx-txt-b__text delay-01"><?php the_title() ?></span></h1> </div>
</div>
<div class="content content--layout-narrow small-gap fx-move-from-bottom is-waypoint">
  <div class="post-content">
    <div class="container container--narrow">
      <article id="post-115" class="post-content__article post-115 post type-post status-publish format-standard has-post-thumbnail hentry category-fashion category-reviews tag-fashion tag-sneakers tag-soundcloud tag-video">
        <?php the_content(); ?>
    </div>
  </div>
</div>
<?php endwhile; ?>
<?php endif;?>
<?php get_footer(); ?>
