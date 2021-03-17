<?php
//css
function add_style_css() {
  wp_register_style( 'wc-block-vendors-style-css', get_template_directory_uri() . '/css/vendors-style.css' );//inside page
  wp_enqueue_style( 'wc-block-vendors-style-css' );
  wp_register_style( 'basicLightbox-css', get_template_directory_uri() . '/css/basicLightbox.min.css' );//inside page
  wp_enqueue_style( 'basicLightbox-css' );
  wp_register_style( 'vex-toolkit-css', get_template_directory_uri() . '/css/frontend-toolkit.css' );//inside page
  wp_enqueue_style( 'vex-toolkit-css' );
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
  wp_register_script( 'gsap', get_template_directory_uri() . '/js/gsap.min.js', 'jquery', TRUE );
  wp_enqueue_script( 'gsap');
  wp_register_script( 'smooth-scrollbar', get_template_directory_uri() . '/js/smooth-scrollbar.min.js', 'jquery', TRUE );
  wp_enqueue_script( 'smooth-scrollbar');
  wp_register_script( 'three', get_template_directory_uri() . '/js/three.min.js', 'jquery', TRUE );
  wp_enqueue_script( 'three');
  wp_register_script( 'threefx', get_template_directory_uri() . '/js/threefx.js', 'jquery', TRUE );
  wp_enqueue_script( 'threefx');
  wp_register_script( 'axloader', get_template_directory_uri() . '/js/axloader.js', 'jquery', TRUE );
  wp_enqueue_script( 'axloader');
  wp_register_script( 'scripts-js-extra', get_template_directory_uri() . '/js/scripts-js-extra.js', 'jquery', TRUE );
  wp_enqueue_script( 'scripts-js-extra');
  wp_register_script( 'theme-scripts-js', get_template_directory_uri() . '/js/theme.js', 'jquery', TRUE );
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

?>
