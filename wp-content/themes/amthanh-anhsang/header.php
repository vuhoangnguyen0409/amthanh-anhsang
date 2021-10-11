<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<link rel="icon" type="image/png" href="<?php bloginfo('template_directory');?>/img/logo.png"/>
<?php
	global $post;
	if ( is_page( 512 ) ): //Change this number to id of page ?>
	<link rel="stylesheet" href="<?php bloginfo('template_directory');?>/event-css-js/icons.css" />
	<link rel="stylesheet" href="<?php bloginfo('template_directory');?>/event-css-js/bootstrap.css" />
    <link rel="stylesheet" href="<?php bloginfo('template_directory');?>/event-css-js/style.css" />
<!--PERSONAL SCRIPT JavaScript-->
    <?php endif; ?>
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
    <div class="loader theme-loader">
       <div class="loader__content">
          <div class="loader__image"><img src="<?php bloginfo('template_directory');?>/img/logo.png" alt="Preloader Image"></div>
          <div class="loader__spiner"></div>
       </div>
       <div class="loader__progress"></div>
    </div>
    <div id="cursor">
       <div class="cursor__body"></div>
       <div class="cursor__body-inner"></div>
    </div>

    <header id="header">
       <div class="header__container container--full">
          <div class="header__logo">
            <?php
              $logo = get_field('logo', 'option');	//var_dump($logo); die();
              if( $logo ): ?>
             <a href="/"><img src="<?php echo $logo['logo-img']['url']; ?>" alt="<?php echo $logo['logo-alt']; ?>"></a>
             <?php endif; ?>
          </div>
          <div class="header__menu header__menu-hybrid menu">

             <!-- Menu -->
             <nav class="menu-top">
                <div class="menu-main-menu-container">
                    <?php wp_nav_menu( array(
                         'theme_location' => 'main-nav', // tên location cần hiển thị
                         'walker'  => new Child_Wrap(),
                         'container' => 'ul', // thẻ nav chua menu
                         'menu_class' => 'primary', //main-nav: class của the nav
                         'menu_id' => 'menu-main-menu'
                    ) ); ?>
                </div>
             </nav>
             <!-- Menu -->

             <!-- Menu -->
             <div class="menu-layer menu-align-left menu-numbers-on" style="background-image: url()">
                <div class="menu-layer__wrap">
                   <div class="menu-layer__inner container container--full">
                      <nav class="menu-main">
                         <div class="menu-main-menu-container">
                            <?php wp_nav_menu( array(
                                 'theme_location' => 'main-nav', // tên location cần hiển thị
                                 'walker'  => new Child_Wrap(),
                                 'container' => 'ul', // thẻ nav chua menu
                                 'menu_class' => 'primary', //main-nav: class của the nav
                                 'menu_id' => 'menu-main-menu'
                            ) ); ?>
                         </div>
                      </nav>
                   </div>
                </div>
             </div>
             <!-- Menu -->

             <!--<a href="https://amthanhphuquoc.com/./tao-su-kien/" class="bg-player rascals-player plan-event">-->
				 <a href="/tao-su-kien/" class="bg-player rascals-player plan-event">
                <span class="bg-player__loader"></span>
                <div class="bg-player__inner magneto">
                   <div class="anim-border">
                      <span class="anim-border__circle">
						 <span class="" data-toggle="tooltip" data-placement="bottom" title="YÊU CẦU BÁO GIÁ">
   				 			<i class="icon icon-calendar tooltip"></i>
 						</span>
                	</span>
                   </div>
                   <span class="bg-player__eq">
                   <span class="eq-bar eq-bar1"></span>
                   <span class="eq-bar eq-bar2"></span>
                   <span class="eq-bar eq-bar3"></span>
                   <span class="eq-bar eq-bar4"></span>
                   <span class="eq-bar eq-bar5"></span>
                   <span class="eq-bar eq-bar6"></span>
                   </span>
                </div>
             </a>
             <a href="#" class="menu-button">
                <div class="menu-button__inner magneto">
                   <div class="anim-border">
                      <span class="anim-border__circle">
                         <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="33" cy="33" r="32"></circle>
                         </svg>
                         <svg viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="33" cy="33" r="32"></circle>
                         </svg>
                      </span>
                   </div>
                   <div class="menu-button__text">
                      <div class="fx-txt-a">
                         <span class="fx-txt-a__text">Menu</span>
                      </div>
                   </div>
                   <span class="menu-button__close">
                   <i></i>
                   <i></i>
                   </span>
                </div>
             </a>
          </div>
       </div>
    </header>
    <div id="app">
       <div id="ajax-content">
           <div class="rt-player-audio" data-audio="https://rascalsthemes.com/demo/vex/demo1/wp-content/uploads/2019/12/Crazy_Eyes.mp3"></div>
