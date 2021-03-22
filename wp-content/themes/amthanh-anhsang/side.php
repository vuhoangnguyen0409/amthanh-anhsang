<div id="sidebar">
   <div class="sidebar__block sidebar--left">
    <a href="#" id="sidebar__trigger"></a>
    <div class="sidebar__inner">
     <div class="sidebar__content">
      <aside>
         <aside id="search-3" class="widget widget_search">
             <form class="search-form" action="">
 				<input type="text" name="tim-kiem" id="tim_kiem" class="text-center" placeholder="Search">
 				<button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
 				<ul class="search-result""></ul>
 			</form>
          <form method="get" id="searchform" class="searchform" action="">
           <fieldset>
            <span class="search-input-wrap">
            <input type="text" placeholder="Search and hit enter" value="" name="s" id="s"  />
            </span>
            <button type="submit" id="searchsubmit"><i class="icon icon-search"></i></button>
           </fieldset>
          </form>
         </aside>
         <aside id="recent-posts-3" class="widget widget_recent_entries">
          <h3 class="widget-title">Recent Posts</h3>
          <ul>
              <?php $args = array(
                      'posts_per_page'   => 5,
                      'offset'           => 0,
                      'category'         => '',
                      'category_name'    => '',
                      'orderby'          => 'post_date',
                      'order'            => 'ASC',
                      //'order'            => 'DESC',
                      'post_status'      => 'publish',
                      'suppress_filters' => true
                  );
                  $posts_array = get_posts( $args );
          foreach ( $posts_array as $post ) : setup_postdata( $post );?>
           <li>
            <a href="<?php the_permalink(); ?>"><?php the_title() ?></a>
           </li>
           <?php endforeach; ?>
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

         <aside id="tag_cloud-1" class="widget widget_tag_cloud">
          <h3 class="widget-title">Tags</h3>
          <div class="tagcloud">
           <a href="/" class="tag-cloud-link" style="font-size: 13px;">Sự Kiện Phú Quốc</a>
           <a href="/" class="tag-cloud-link" style="font-size: 13px;">Âm Thanh - Ánh Sáng</a>
           <a href="/" class="tag-cloud-link" style="font-size: 13px;">Event</a>
           <a href="/" class="tag-cloud-link" style="font-size: 13px;">Màn hình Led</a>
           <a href="/" class="tag-cloud-link" style="font-size: 13px;">Lễ hội</a>
          </div>
         </aside>
      </aside>
     </div>
    </div>
   </div>
   <div class="sidebar__layer fx-cursor" data-cursor-class="close"></div>
</div>
