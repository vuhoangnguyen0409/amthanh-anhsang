<?php 
get_header(); ?>
<?php
        $array = array(
            'post_type' => 'page',
            'post_status' => 'publish',
            'name'        => 'news',
        );
      $the_query = new WP_Query( $array );
?>
<div class="headLine">
<?php if ( $the_query->have_posts() ) :
        while( $the_query->have_posts() ) : $the_query->the_post();
?>
    <div class="bgHline inner"><?php if ( has_post_thumbnail() )  the_post_thumbnail() ;?></div>
    <div class="hLine01"><h2><?php echo (get_field('title_image')) ? '<img src="'. get_field('title_image') .'" alt="'. get_the_title().'">' : get_the_title() ;?></h2></div>
<?php endwhile; endif; ?>
<?php wp_reset_postdata() ;?>
</div>

<div class="breadcrumb">
    <ul class="clearfix inner">
        <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">TOP</a></li>
        <li><a href="<?php echo esc_url( home_url( '/news' ) ); ?>">新着情報</a></li>
        <li><?php the_title() ?></li>
    </ul>
</div>
            
<div id="contents" class="clearfix">
	<div id="main"  class="eleNew">
		<?php  if (have_posts()): while(have_posts()): the_post(); ?>
		<div class="blockDetail">
			<h3 class="hlineNews"><?php the_title()  ;?></h3>
			<p class="dateCreate"><?php echo get_the_date('Y.m.d') ;?></p>
			<div class="mb30"> <?php if ( has_post_thumbnail() ) the_post_thumbnail(); ?></div>
			<?php the_content() ;?>
		</div>
		<?php endwhile; ?>
		<?php endif;?>
            <div class="pagination pagiDetail">
                <ul class="clearfix">
                    <?php $next_post = get_next_post(); 
                             $pre_post = get_previous_post(); 
                    ?>
                    <li><a href="<?php echo get_permalink( $pre_post->ID ); ?>" class="prev"><img src="<?php echo get_bloginfo('template_directory');?>/img/common/btn_back.png" alt="page" /></a></li>
                    <li><a href="<?php echo esc_url( home_url( '/news' ) ); ?>" class="list"><img src="<?php echo get_bloginfo('template_directory');?>/img/common/btn_list.png" alt="list" /></a></li>
                    <li><a href="<?php echo get_permalink( $next_post->ID ); ?>" class="next"><img src="<?php echo get_bloginfo('template_directory');?>/img/common/btn_next.png" alt="next" /></a></li>
                </ul>
            </div>
	</div>
</div>
<?php get_footer(); ?>