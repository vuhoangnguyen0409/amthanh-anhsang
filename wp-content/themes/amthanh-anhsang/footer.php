    </div> <!-- <div id="ajax-content"> -->
</div> <!-- <div id="app"> -->

<!-- Footer -->
<!-- Footer container -->

<footer id="footer" class="container container--full">
   <div class="footer__inner">
	  <div class="footer__left">
		 <div class="footer__left-inner">
			<div class="socials fx-trigger fx-cursor" data-cursor-class="hover">
			   <ul class="socials__list">
           <?php
   // vars
   $links = get_field('social_links', 'option');
   if( $links ): ?>
				  <li class="trans-05 delay-03">
					 <div class="magneto"><a target='_blank' href="<?php echo $links['instagram']['url']; ?>" class="socials__link social--instagram"><span class="icon icon-instagram"></span></a></div>
				  </li>
				  <li class="trans-05 delay-02">
					 <div class="magneto"><a target='_blank' href="<?php echo $links['facebook']['url']; ?>" class="socials__link social--facebook"><span class="icon icon-facebook"></span></a></div>
				  </li>
				  <li class="trans-05 delay-01">
					 <div class="magneto"><a target='_blank' href="<?php echo $links['twitter']['url']; ?>" class="socials__link social--twitter"><span class="icon icon-twitter"></span></a></div>
				  </li>
          <?php endif; ?>
			   </ul>
			   <span class="socials__icon magneto"><span class="icon icon-share"></span></span>
			   <div class="fx-txt-a socials__text">
				  <span class="fx-txt-a__text">Theo dõi</span>
			   </div>
			</div>
		 </div>
	  </div>
	  <div class="footer__center">
		 <div class="footer__note">
			&copy; 2020 - Bản quyền thuộc <a class="wave-link" href="#" target="_blank">Trà Hồng Quân's Events</a>.
		 </div>
		 <!-- .footer-note -->
	  </div>
	  <div class="footer__right">
		 <div class="footer__right-inner">
			<a href="#" class="arrow-button scroll-top">
			   <div class="fx-txt-a">
				  <span class="fx-txt-a__text">Scroll Top</span>
			   </div>
			   <div class="arrow-button__inner magneto">
				  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" xml:space="preserve">
					 <g>
						<line x1="18" y1="0" x2="18" y2="4"></line>
						<line x1="18" y1="7" x2="18" y2="19"></line>
						<polyline points="21.7,15.2 18,19.4 14.3,15.2   "></polyline>
					 </g>
					 <path d="M29.8,5.1c3.5,3.2,5.7,7.8,5.7,12.9c0,9.7-7.8,17.5-17.5,17.5S0.5,27.7,0.5,18c0-4.8,2-9.2,5.1-12.4"></path>
				  </svg>
			   </div>
			</a>
		 </div>
	  </div>
   </div>
</footer>
<!-- .footer -->
<div id="fx-load-holder"></div>
<div class="ax--wp-footer">

<!-- Scripts
<
script src = "assets/js/jquery.min.js" > < /script>

	-->
  <div id="sidebar">
     <div class="sidebar__block sidebar--left">
      <a href="#" id="sidebar__trigger"></a>
      <div class="sidebar__inner">
       <div class="sidebar__content">
        <aside>
           <aside id="recent-posts-3" class="widget widget_recent_entries">
             <input type="text" placeholder="Từ khoá tìm kiếm" name="keyword" id="keyword" onkeyup="fetch()" placeholder="Nhập tìm kiếm post post ajax"></input>
             <ul id="datafetch">Kết quả</ul>
           </aside>
           <aside id="recent-posts-3" class="widget widget_recent_entries">
            <h3 class="widget-title">Bài viết gần đây</h3>
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

           <aside id="tag_cloud-1" class="widget widget_tag_cloud">
            <h3 class="widget-title">Từ khoá liên quan</h3>
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

	<?php wp_footer(); ?>

	</html>
