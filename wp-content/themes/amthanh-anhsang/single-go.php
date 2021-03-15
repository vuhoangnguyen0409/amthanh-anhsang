<?php get_header(); ?>
<section>
    <div class="inner">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <h3 class=""><?php the_title(); ?></h3>
        <div class="imgshow clearfix">
            <p>
                <?php if ( has_post_thumbnail() ) the_post_thumbnail() ;?>
            </p>
            <p>
                <?php $image=get_field( 'sub_img'); if( !empty($image) ): ?> <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
                <?php endif; ?>
            </p>
        </div>
        <div>
            <p class="content">
                <?php the_content(); ?>
            </p>
            <p class="price">
                <?php the_field( 'price');?>&nbsp;VND</p>
        </div>
    </div>
    <!--/wrapDetail-->
    <?php endwhile; ?>
    <?php endif; ?> </div>
</section>
<?php get_footer(); ?>