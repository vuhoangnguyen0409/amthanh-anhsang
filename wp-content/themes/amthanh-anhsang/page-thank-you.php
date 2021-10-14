<?php
/**
* Template Name: Thank you
**/
get_header();
?>
<?php
if (have_posts()): while(have_posts()): the_post();?>
<div class="fs__image fx-smooth-move-layer" style="background-image: url(<?php bloginfo('template_directory');?>/img/bg/form-bg.jpg)"></div>
<div class="pt pt-fs-parallax align-left pt--is-image fx-parallax fx-scroll-fade" style="background-image: url(<?php the_post_thumbnail_url(); ?>); background-position: 50% 0px;">
    <div class="fade-layer" style="opacity: 0;"></div>
    <div class="pt-fs-parallax__inner is-waypoint">
        <div class="image-container set-full-height">
            <div class="container">
    	        <div class="row">
    		        <div class="col-sm-10 col-sm-offset-1">
    		            <!-- Wizard container -->
    		            <div class="wizard-container">
    		                <div class="card wizard-card" data-color="red" id="wizard">
                                <div class="tab-content">
                                    <div class="col-sm-12 mail-sent">
                                        <i class="material-icons">done</i>
                                        <h4><?php the_title(); ?></h4>
                                        <p><?php the_content(); ?></p>
                                        <a class="btn btn-danger" href="https://amthanhphuquoc.com/">Về Trang Chủ</a>
                                    </div>
                                </div>
    		                </div>
    		            </div> <!-- wizard container -->
    		        </div>
    	    	</div> <!-- row -->
    		</div> <!--  big container -->
	</div>
    </div>
</div>
<?php endwhile; ?>
<?php endif;?>
<?php get_footer(); ?>
