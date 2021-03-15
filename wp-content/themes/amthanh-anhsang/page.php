<?php get_header(); ?>
<!-- Section -->
<section>
    <?php if (have_posts()): while (have_posts()): the_post(); the_content(); endwhile; endif; ?> </section>
<!-- Footer -->
<?php get_footer(); ?>
