<?php
//css
function add_style_css() {
  wp_register_style( 'wpb-fa', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css' );//cdn
  wp_enqueue_style( 'wpb-fa' );
  wp_register_style( 'reset', get_template_directory_uri() . '/css/reset.css' );//inside page
  wp_enqueue_style( 'reset' );
}
add_action( 'wp_enqueue_scripts', 'add_style_css' );
//js
function add_style_js() {
  wp_register_script( 'jquery01', get_template_directory_uri() . '/js/jquery-1.8.3.min.js', 'jquery', TRUE );
  wp_enqueue_script( 'jquery01');
  
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