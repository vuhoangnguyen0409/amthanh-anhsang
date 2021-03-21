<?php
/**
 * Template Name: News
 **/
get_header();
?>
<!-- Gallery -->
<div class="pt pt-simple align-left">
   <div class="pt-simple__inner is-waypoint">
    <h1 class="pt__title-h fx-txt-b entry-title size-large"><span class="fx-txt-b__text delay-01">Tin Tức</span></h1>
   </div>
</div>
<div class="content content--layout-narrow small-gap news">
   <div class="container container--narrow">


     <?php $args = array(
        'posts_per_page'   => 5,
        'offset'           => 0,
        'category'         => '',
        'category_name'    => 'tin-tuc',
        'orderby'          => 'post_date',
        'order'            => 'ASC',
        //'order'            => 'DESC',
        'include'          => '',
        'exclude'          => '',
        'meta_key'         => '',
        'meta_value'       => '',
        //'post_type'        => 'news',
        'post_type'        => '',
        'post_mime_type'   => '',
        'post_parent'      => '',
        'post_status'      => 'publish',
        'suppress_filters' => true
      );
      $posts_array = get_posts( $args );
      foreach ( $posts_array as $post ) : setup_postdata( $post );
        $thumbnail_id = get_post_thumbnail_id( $post->ID );
        $alt = get_post_meta($thumbnail_id, '_wp_attachment_image_alt', true);?>
        <div class="mod mod-news-1 is-waypoint  is-featured">
         <div class="mod__inner container--full post-8 post type-post status-publish format-standard has-post-thumbnail hentry category-reviews category-uncategorized tag-mixtape tag-soundcloud tag-video">
          <div class="mod__flex">
             <div class="mod__cell mod__left">
              <div class="mod__meta">
               <div class="mod__date"><?php echo get_the_date('Y/m/d'); ?></div>
               <div class="mod__cats"><span class="cat cat-3 "><span class="cat-inner ">Reviews</span></span></div>
              </div>
              <div class="mod__img mod__cell">
               <div class="image"><img src="<?php the_post_thumbnail_url(); ?>" class="mod__thumb fx-load-img" alt="Post Image"></div>
              </div>
             </div>
             <div class="mod__cell mod__right">
              <h2 class="mod__title"><?php the_title() ?></h2>
              <div class="mod__excerpt">
               <?php the_excerpt(); ?>
              </div>
              <div class="mod__readmore">
               <div class="arrow-button arrow-button--right">
                <div class="fx-txt-a">
                   <span class="fx-txt-a__text">Read article</span>
                </div>
                <div class="arrow-button__inner">
                   <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" xml:space="preserve">
                    <g>
                     <line x1="18" y1="0" x2="18" y2="4"></line>
                     <line x1="18" y1="7" x2="18" y2="19"></line>
                     <polyline points="21.7,15.2 18,19.4 14.3,15.2   "></polyline>
                    </g>
                    <path d="M29.8,5.1c3.5,3.2,5.7,7.8,5.7,12.9c0,9.7-7.8,17.5-17.5,17.5S0.5,27.7,0.5,18c0-4.8,2-9.2,5.1-12.4"></path>
                   </svg>
                </div>
               </div>
              </div>
             </div>
          </div>
         </div>
         <div class="mod__bg" style="background-image:url(<?php the_post_thumbnail_url(); ?>);" ></div>
         <a class="mod__click fx-cursor fx-load fx-load-fz fx-load-scroll-after" href="<?php the_permalink(); ?>" data-cursor-class="click"></a>
        </div>
    <?php endforeach; ?>


    <nav class="navigation paging-navigation">
     <div class="pagination loop-pagination">
      <span aria-current="page" class="page-numbers current">1</span>
      <a class="page-numbers" href="https://rascalsthemes.com/demo/vex/demo1/news/page/2/">2</a>
      <a class="next page-numbers" href="https://rascalsthemes.com/demo/vex/demo1/news/page/2/">&rarr;</a>
     </div>
     <!-- .pagination -->
    </nav>
    <!-- .navigation -->
   </div>
   <!-- .container -->
</div>
<!-- .content -->
<div id="sidebar">
   <div class="sidebar__block sidebar--left">
    <a href="#" id="sidebar__trigger"></a>
    <div class="sidebar__inner">
     <div class="sidebar__content">
      <aside>
         <aside id="search-3" class="widget widget_search">
          <form method="get" id="searchform" class="searchform" action="https://rascalsthemes.com/demo/vex/demo1/">
           <fieldset>
            <span class="search-input-wrap">
            <input type="text" placeholder="Search and hit enter" value="" name="s" id="s" />
            </span>
            <button type="submit" id="searchsubmit"><i class="icon icon-search"></i></button>
           </fieldset>
          </form>
         </aside>
         <aside id="recent-posts-3" class="widget widget_recent_entries">
          <h3 class="widget-title">Recent Posts</h3>
          <ul>
           <li>
            <a href="https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/">DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season</a>
           </li>
           <li>
            <a href="https://rascalsthemes.com/demo/vex/demo1/check-out-some-of-the-best-street-style-from-new-york/">Check Out Some of the Best Street Style From New York</a>
           </li>
           <li>
            <a href="https://rascalsthemes.com/demo/vex/demo1/10-of-the-best-sneakers-for-women-and-man/">10 of the Best Sneakers for Women and Man</a>
           </li>
           <li>
            <a href="https://rascalsthemes.com/demo/vex/demo1/black-and-orange-wireless-headset/">Black and orange wireless headset</a>
           </li>
           <li>
            <a href="https://rascalsthemes.com/demo/vex/demo1/silvia-talks-about-her-music-video-blocks/">Silvia talks about her music video &quot;Blocks&quot;</a>
           </li>
          </ul>
         </aside>
         <aside id="recent-comments-3" class="widget widget_recent_comments">
          <h3 class="widget-title">Recent Comments</h3>
          <ul id="recentcomments">
           <li class="recentcomments"><span class="comment-author-link">Peter</span> on <a href="https://rascalsthemes.com/demo/vex/demo1/event/fabric-ricardo-el-sonido-2/#comment-30">Fabric Ricardo El Sonido</a></li>
           <li class="recentcomments"><span class="comment-author-link">Lara</span> on <a href="https://rascalsthemes.com/demo/vex/demo1/event/fabric-ricardo-el-sonido-2/#comment-29">Fabric Ricardo El Sonido</a></li>
           <li class="recentcomments"><span class="comment-author-link">Peter</span> on <a href="https://rascalsthemes.com/demo/vex/demo1/event/modern-city/#comment-28">Modern City</a></li>
           <li class="recentcomments"><span class="comment-author-link">Lara</span> on <a href="https://rascalsthemes.com/demo/vex/demo1/event/modern-city/#comment-27">Modern City</a></li>
           <li class="recentcomments"><span class="comment-author-link">Peter</span> on <a href="https://rascalsthemes.com/demo/vex/demo1/event/fabric-ricardo-el-sonido/#comment-26">Astronaut Dub Bass Live Stage</a></li>
          </ul>
         </aside>
         <aside id="archives-3" class="widget widget_archive">
          <h3 class="widget-title">Archives</h3>
          <ul>
           <li><a href='https://rascalsthemes.com/demo/vex/demo1/2020/01/'>January 2020</a></li>
           <li><a href='https://rascalsthemes.com/demo/vex/demo1/2019/12/'>December 2019</a></li>
           <li><a href='https://rascalsthemes.com/demo/vex/demo1/2019/11/'>November 2019</a></li>
           <li><a href='https://rascalsthemes.com/demo/vex/demo1/2019/04/'>April 2019</a></li>
          </ul>
         </aside>
         <aside id="categories-3" class="widget widget_categories">
          <h3 class="widget-title">Categories</h3>
          <ul>
           <li class="cat-item cat-item-2"><a href="https://rascalsthemes.com/demo/vex/demo1/category/fashion/">Fashion</a></li>
           <li class="cat-item cat-item-3"><a href="https://rascalsthemes.com/demo/vex/demo1/category/reviews/">Reviews</a></li>
           <li class="cat-item cat-item-1"><a href="https://rascalsthemes.com/demo/vex/demo1/category/uncategorized/">Uncategorized</a></li>
          </ul>
         </aside>
         <aside id="tag_cloud-1" class="widget widget_tag_cloud">
          <h3 class="widget-title">Tags</h3>
          <div class="tagcloud"><a href="https://rascalsthemes.com/demo/vex/demo1/tag/fashion/" class="tag-cloud-link tag-link-5 tag-link-position-1" style="font-size: 13px;">fashion</a>
           <a href="https://rascalsthemes.com/demo/vex/demo1/tag/mixtape/" class="tag-cloud-link tag-link-7 tag-link-position-2" style="font-size: 13px;">mixtape</a>
           <a href="https://rascalsthemes.com/demo/vex/demo1/tag/new-york/" class="tag-cloud-link tag-link-8 tag-link-position-3" style="font-size: 13px;">new york</a>
           <a href="https://rascalsthemes.com/demo/vex/demo1/tag/sneakers/" class="tag-cloud-link tag-link-9 tag-link-position-4" style="font-size: 13px;">sneakers</a>
           <a href="https://rascalsthemes.com/demo/vex/demo1/tag/soundcloud/" class="tag-cloud-link tag-link-10 tag-link-position-5" style="font-size: 13px;">soundcloud</a>
           <a href="https://rascalsthemes.com/demo/vex/demo1/tag/video/" class="tag-cloud-link tag-link-12 tag-link-position-6" style="font-size: 13px;">video</a>
          </div>
         </aside>
      </aside>
     </div>
    </div>
   </div>
   <div class="sidebar__layer fx-cursor" data-cursor-class="close"></div>
</div>
<!-- Footer -->
<?php get_footer();
?>
