<?php /** * Template Name: tat-ca-san-pham-go **/
get_header(); ?>
<!-- Gallery -->

<section id="galleries">
    <div class="inner">
        <!-- Photo Galleries -->
        <div class="gallery02">

            <!-- Filters -->
            <header>
                <h1>Tất cả sản phẩm gỗ</h1>
            </header>
            <div class="content clearfix">
                <?php $args=array( 'orderby'=> 'post_date', 'order' =>
                'DESC', 'post_type' => 'go',
                'post_status' => 'publish',
                'suppress_filters' => true,'posts_per_page' => -1,
                ); $posts_array = get_posts(
                $args ); foreach ( $posts_array
                as $post ) : setup_postdata(
                $post ); ?>
                <div class="media">
                    <a href="<?php the_permalink(); ?>">
                        <?php the_post_thumbnail( "");?><span><?php the_title();?></span>
                    </a>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
</section>


<!-- Footer -->
<?php get_footer(); ?>