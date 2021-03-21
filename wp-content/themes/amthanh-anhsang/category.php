<?php
/**
 * Template Name: Category
 **/
get_header();

//wp_list_categories();
//for each category, show all posts
$cat_args=array(
  'orderby' => 'name',
  'order' => 'ASC'
   );
$categories=get_categories($cat_args);
  foreach($categories as $category) {
    $args=array(
      'showposts' => -1,
      'category__in' => array($category->term_id),
      'caller_get_posts'=>1
    );
    $posts=get_posts($args);
      if ($posts) {
        echo '<h2>Category: <a href="' . get_category_link( $category->term_id ) . '" title="' . sprintf( __( "View all posts in %s" ), $category->name ) . '" ' . '>' . $category->name.'</a> </h2> ';
        foreach($posts as $post) {
          setup_postdata($post); ?>
          <p><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></p>
          <?php
        } // foreach($posts
      } // if ($posts
    } // foreach($categories
?>


<?php get_footer(); ?>
