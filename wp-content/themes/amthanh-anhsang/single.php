<?php get_header();
//Template Name: Single News
?>
<?php  if (have_posts()): while(have_posts()): the_post();?>
<div class="pt pt-fs-parallax align-left pt--is-image fx-parallax fx-scroll-fade" style="background-image: url(<?php the_post_thumbnail_url(); ?>); background-position: 50% 0px;">
  <div class="fade-layer" style="opacity: 0;"></div>
  <div class="pt-fs-parallax__inner is-waypoint done">
    <div class="pt-meta meta">
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
