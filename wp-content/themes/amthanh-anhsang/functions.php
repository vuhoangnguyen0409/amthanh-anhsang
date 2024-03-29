<?php
//css
function add_style_css() {
  wp_register_style( 'font-face', 'https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap' );//cdn
  wp_enqueue_style( 'font-face' );
  wp_register_style( 'wc-block-vendors-style-css', get_template_directory_uri() . '/css/vendors-style.css' );//inside page
  wp_enqueue_style( 'wc-block-vendors-style-css' );
  wp_register_style( 'basicLightbox-css', get_template_directory_uri() . '/css/basicLightbox.min.css' );//inside page
  wp_enqueue_style( 'basicLightbox-css' );
  wp_register_style( 'vex-toolkit-css', get_template_directory_uri() . '/css/frontend-toolkit.css' );//inside page
  wp_enqueue_style( 'vex-toolkit-css' );
  wp_register_style( 'animations', get_template_directory_uri() . '/css/animations.min.css' );//inside page
  wp_enqueue_style( 'animations' );
  wp_register_style( 'frontend', get_template_directory_uri() . '/css/frontend.min.css' );//inside page
  wp_enqueue_style( 'frontend' );
  wp_register_style( 'icomoon-font-css', get_template_directory_uri() . '/css/icomoon.css' );//inside page
  wp_enqueue_style( 'icomoon-font-css' );
  wp_register_style( 'angio-grid-css', get_template_directory_uri() . '/css/grid.css' );//inside page
  wp_enqueue_style( 'angio-grid-css' );
  wp_register_style( 'vex-style-css', get_template_directory_uri() . '/css/style.css' );//inside page
  wp_enqueue_style( 'vex-style-css' );
  wp_register_style( 'woocommerce-custom-style-css', get_template_directory_uri() . '/css/wc-custom-style.css' );//inside page
  wp_enqueue_style( 'woocommerce-custom-style-css' );
  wp_register_style( 'post-72-css', get_template_directory_uri() . '/css/post-72.css' );//inside page
  wp_enqueue_style( 'post-72-css' );
  wp_register_style( 'youtube-popup', get_template_directory_uri() . '/css/video.popup.css' );//inside page
  wp_enqueue_style( 'youtube-popup' );
}
add_action( 'wp_enqueue_scripts', 'add_style_css' );
//js
function add_style_js() {
    //if( ! is_page( array( 'tao-su-kien', 'student-work' ) ) ) {
    wp_register_script( 'basicLightbox', get_template_directory_uri() . '/js/basicLightbox.min.js', array( 'jquery' ), '', true );
    wp_enqueue_script( 'basicLightbox');

  wp_register_script( 'gsap', get_template_directory_uri() . '/js/gsap.min.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'gsap');
  wp_register_script( 'smooth-scrollbar', get_template_directory_uri() . '/js/smooth-scrollbar.min.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'smooth-scrollbar');
  wp_register_script( 'three', get_template_directory_uri() . '/js/three.min.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'three');
  wp_register_script( 'threefx', get_template_directory_uri() . '/js/threefx.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'threefx');

 if( ! is_page( array( 'tao-su-kien', 'student-work' ) ) ) {
  wp_register_script( 'frontend-toolkit', get_template_directory_uri() . '/js/frontend-toolkit.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'frontend-toolkit');
}

      wp_register_script( 'scripts-js-extra', get_template_directory_uri() . '/js/scripts-js-extra.js', array( 'jquery' ), '', true );
      wp_enqueue_script( 'scripts-js-extra');


      wp_register_script( 'theme-scripts-js', get_template_directory_uri() . '/js/theme.js', array( 'jquery' ), '', true );
      wp_enqueue_script( 'theme-scripts-js');

  wp_register_script( 'jquery2', get_template_directory_uri() . '/js/jquery-3.2.1.min.js', array( 'jquery' ));
  wp_enqueue_script( 'jquery2');
  wp_register_script( 'youtube-popup', get_template_directory_uri() . '/js/video.popup.js', array( 'jquery' ));
  wp_enqueue_script( 'youtube-popup');

  wp_register_script( 'axloader', get_template_directory_uri() . '/js/axloader.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'axloader');
  // }

}
add_action( 'wp_enqueue_scripts', 'add_style_js' );
// Init
remove_action( 'wp_head', 'feed_links_extra', 3 );
remove_action( 'wp_head', 'rsd_link' );
remove_action( 'wp_head', 'wlwmanifest_link' );
remove_action( 'wp_head', 'wp_generator' );
//feature img
add_theme_support( 'post-thumbnails' );
add_theme_support( 'category-thumbnails' );
add_theme_support( 'html5' );
//hide admin bar
show_admin_bar( false );
//css wp admin
function wpdocs_theme_add_editor_styles() {
    add_editor_style( 'custom-editor-style.css' );
}

add_action( 'admin_init', 'wpdocs_theme_add_editor_styles' );
//logo admin
 function login_logo() {
    echo '<style type="text/css">
    .login h1 a {
          background-image: url('.get_template_directory_uri().'/img/logo.png);
          background-size:100% 100%;
          height: 125px;
      width: 145px;
        }
    </style>';
}
add_action( 'login_head', 'login_logo' );

// Nav
register_nav_menus(
    array(
        'main-nav' => 'main-nav-location',
        'footer-nav' => 'footer-nav-location'
    )
);

// Nav active
add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);

function special_nav_class ($classes, $item) {
  if (in_array('current-menu-item', $classes) ){
    $classes[] = 'active ';
  }
  return $classes;
}

/**
 * Add custom class for top story section
 */
add_filter('body_class', function ($classes) {
        $classes[] = 'theme-vex is-anim is-fullscreen AXloader is-loader is-parallax-scroll is-header-bg is-scroll-mask is-smoothscroll is-cursor-effects';

    return $classes;
});

function get_custom_cat_template($single_template) {
   global $post;
   if ( in_category( array('am-thanh', 'anh-sang', 'san-khau') )) {
      $single_template = dirname( __FILE__ ) . '/single-amthanh-anhsang.php';
   }
   return $single_template;
}
add_filter( "single_template", "get_custom_cat_template" ) ;

//Numbered Pagination
if ( !function_exists( 'wpex_pagination' ) ) {
 function wpex_pagination() {
 global $wp_query;
 //$prev_arrow = is_rtl() ? '<img height="20px" src="'.get_template_directory_uri().'/img/common/back.gif" alt="back" />' : '<img height="20px" src="'.get_template_directory_uri().'/images/back.png" alt="back" />';
 //$next_arrow = is_rtl() ? '<img height="20px" src="'.get_template_directory_uri().'/img/common/next.gif" alt="next" />' : '<img height="20px" src="'.get_template_directory_uri().'/images/next.png" alt="next" />';
$big = 999999999; // need an unlikely integer
$pages = paginate_links( array(
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
        'format' => '?paged=%#%',
        'current' => max( 1, get_query_var('paged') ),
        'total' => $wp_query->max_num_pages,
        'type'  => 'array',
  //'prev_text'  => $prev_arrow,
  //'next_text'  =>$next_arrow
    ) );
    if( is_array( $pages ) ) {
        $paged = ( get_query_var('paged') == 0 ) ? 1 : get_query_var('paged');
        echo '<nav class="navigation paging-navigation">
         <div class="pagination loop-pagination">
         ';
        foreach ( $pages as $page ) {
                echo "<a class='page-numbers'>$page</a>";
        }
       echo '</div>
       <!-- .pagination -->
      </nav>';
        }
 }
}

/************ Theme Options************/
if( function_exists('acf_add_options_page') ) {

	acf_add_options_page(array(
		'page_title' 	=> 'Theme General Settings',
		'menu_title'	=> 'Theme Settings',
		'menu_slug' 	=> 'theme-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
	));
}
// add the ajax fetch js
add_action( 'wp_footer', 'ajax_fetch' );
function ajax_fetch() {
?>
<script type="text/javascript">
function fetch(){

    jQuery.ajax({
        url: '<?php echo admin_url('admin-ajax.php'); ?>',
        type: 'post',
        data: { action: 'data_fetch', keyword: jQuery('#keyword').val() },
        success: function(data) {
            jQuery('#datafetch').html( data );
        }
    });

}
</script>

<?php
}
// the ajax function
add_action('wp_ajax_data_fetch' , 'data_fetch');
add_action('wp_ajax_nopriv_data_fetch','data_fetch');
function data_fetch(){

    $the_query = new WP_Query( array( 'posts_per_page' => -1, 's' => esc_attr( $_POST['keyword'] ), 'post_type' => 'post' ) );
    if( $the_query->have_posts() ) :
        while( $the_query->have_posts() ): $the_query->the_post(); ?>

            <li><a href="<?php echo esc_url( post_permalink() ); ?>"><?php the_title();?></a></li>

        <?php endwhile;
        wp_reset_postdata();
    endif;

    die();
}
//
class Child_Wrap extends Walker_Nav_Menu
{
    function start_lvl(&$output, $depth = 0, $args = array())
    {
        $indent = str_repeat("\t", $depth);
        $output .= "\n$indent<ul class=\"sub-menu\">\n";
    }

    function end_lvl(&$output, $depth = 0, $args = array())
    {
        $indent = str_repeat("\t", $depth);
        $output .= "$indent</ul>\n";
    }
}

//function to modify default WordPress query
function wpb_custom_query( $query ) {

// Make sure we only modify the main query on the homepage
    if( $query->is_main_query() && ! is_admin() ) {

        // Set parameters to modify the query
        $query->set( 'orderby', 'date' );
        $query->set( 'order', 'DESC' );
        $query->set( 'suppress_filters', 'true' );
    }
}

// Hook our custom query function to the pre_get_posts
add_action( 'pre_get_posts', 'wpb_custom_query' );
?>
