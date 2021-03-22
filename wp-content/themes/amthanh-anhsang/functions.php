<?php
//css
function add_style_css() {
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
}
add_action( 'wp_enqueue_scripts', 'add_style_css' );
//js
function add_style_js() {
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
  wp_register_script( 'axloader', get_template_directory_uri() . '/js/axloader.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'axloader');
  wp_register_script( 'scripts-js-extra', get_template_directory_uri() . '/js/scripts-js-extra.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'scripts-js-extra');
  wp_register_script( 'theme-scripts-js', get_template_directory_uri() . '/js/theme.js', array( 'jquery' ), '', true );
  wp_enqueue_script( 'theme-scripts-js');
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
        $classes[] = '"theme-vex is-anim is-fullscreen AXloader is-loader is-parallax-scroll is-header-bg is-scroll-mask is-smoothscroll is-cursor-effects elementor-default elementor-kit-534';

    return $classes;
});

function get_custom_cat_template($single_template) {
   global $post;
   if ( in_category( 'amthanh-anhsang' )) {
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
// search-form
add_action('wp_ajax_timkiem', 'timkiem');
add_action('wp_ajax_nopriv_timkiem', 'timkiem');
function timkiem() {
    global $wpdb;
    $data = array();
    $response = '';
    if(isset($_POST['tikkiem']) && $_POST['tikkiem']){
        $args = array(
            'post_type' => array( 'post','item'  ),
            's' => trim($_POST['tikkiem']),
            'posts_per_page' => -1
        );
    }else{
        $args = array(  'post_type' => post, 'posts_per_page' => -1);
    }
    $myposts = get_posts( $args );
    foreach ( $myposts as $post ) : setup_postdata( $post );
        $response .= '<li><a href="'. get_the_permalink($post->ID).'"><span class="price">'.get_the_title($post->ID).'</span></a></li>';
    endforeach;
    echo($response);
    die();
}
?>
