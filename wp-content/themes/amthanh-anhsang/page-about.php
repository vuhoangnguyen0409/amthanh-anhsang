<?php
/**
* Template Name: About
**/
get_header();
?>
<div class="content--fullscreen content--builder">
   <div class="fx-smooth-move fs">
      <div class="fs__image fx-smooth-move-bg fx-smooth-move-layer" style="background-image: url(<?php bloginfo('template_directory');?>/img/bg/about-bg.jpg)"></div>
      <div class="fade-layer" style="opacity:0"></div>
      <div id="fs-scroll" class="fs-scroll--v">
         <div id="fs-scroll__content">
            <div class="container container--narrow" style="padding-top:300px;padding-bottom:300px">
               <div data-elementor-type="wp-page" data-elementor-id="5" class="elementor elementor-5" data-elementor-settings="[]">
                  <div class="elementor-inner">
                     <?php if (have_posts()): while (have_posts()): the_post(); the_content(); endwhile; endif; ?>
                  </div>
               </div>
            </div>
         </div>
         <!-- #fs-scroll__content -->
      </div>
      <!-- #fs-scroll -->
   </div>
   <!-- .fx -->
</div>
<?php get_footer(); ?>
