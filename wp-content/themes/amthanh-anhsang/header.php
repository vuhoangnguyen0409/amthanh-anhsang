<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<title>
<?php
          global $page, $paged;
          wp_title( '|', true, 'right' );
          // Add the blog name.
          bloginfo( 'name' );
          // Add the blog description for the home/front page.
           $site_description = get_bloginfo( 'description', 'display' );
           if ( $site_description && ( is_home() || is_front_page() ) )
            echo " | $site_description";
          ?>
</title>
<?php wp_head(); ?>
</head>
<body  <?php body_class(); ?>>
	<div class="page-wrap">
		<nav id="nav">
			<ul>
				<li><a href="<?php echo home_url();?>"><span class="icon fa-home"></span></a>
				</li>
				<li><a href="<?php echo home_url( "/" ); ?>cac-loai-go/"><i class="fa fa-tags" aria-hidden="true"></i></a>
			</ul>
		</nav>
		<section id="main">
			<!-- Header -->
			<header id="header">
				<div><img src="<?php bloginfo('template_directory');?>/img/logo.png" alt=""</span>
				</div>
			</header>