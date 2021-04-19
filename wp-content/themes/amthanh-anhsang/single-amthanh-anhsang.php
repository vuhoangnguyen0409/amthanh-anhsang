<?php
get_header(); ?>

  <div class="rt-player-audio" data-audio="https://rascalsthemes.com/demo/vex/audio/Turbo.mp3"></div>

  <?php
  if (have_posts()): while(have_posts()): the_post();
  $alt = get_post_meta($thumbnail_id, '_wp_attachment_image_alt', true);?>

    <div class="content--fullscreen content--builder content--album">
      <div id="fx-wgl-glitch" class="fs" data-image-src="<?php the_post_thumbnail_url(); ?>">
        <canvas id="fx-wgl-glitch-canvas"></canvas>
        <div class="fs__image" style="background-image: url(<?php the_post_thumbnail_url(); ?>)"></div>
        <div class="fade-layer" style="opacity:0.8"></div>
        <div id="fs-scroll" class="fs-scroll--v">
          <div id="fs-scroll__content">
            <div class="container container--full" style="padding-top:250px;padding-bottom:250px">
              <div class="album album-left">
                <div class="album__cover">
                  <div class="rt-album-cover-wrap is-waypoint">
                    <div class="fx-parallax-scroll" data-factor="15">
                      <div class="ithumb ithumb-perspective">
                        <a href="#" class="fx-cursor fx-lightbox" data-cursor-class="click" data-lb-id="lb-lb_605571ccec17a">
                          <div class="ithumb-perspective__title hidden">
                            <h2 class="fx-txt-b"><span class="fx-txt-b__text delay-06"><?php the_title() ?></span></h2>
                          </div>
                          <div class="ithumb-perspective__img">
                            <div class="img">
                              <img src="<?php the_post_thumbnail_url(); ?>" alt="<?php echo $alt; ?>" class="fx-load-fi-target">
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div id="lb-lb_605571ccec17a" class="lightbox__content">
                      <div class="lightbox__inner lightbox__image">
                        <img src="<?php the_post_thumbnail_url(); ?>" alt="City Life">
                        <span class="lightbox__title"><?php the_title()  ;?></span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="album__content">
                  <div class="content-title is-waypoint">
                    <div class="content-title__inner">
                      <h1 class="pt__title-h fx-txt-b entry-title size-medium"><span class="fx-txt-b__text delay-01"><?php the_title()  ;?></span></h1>
                    </div>
                  </div>
                  <div class="album-buttons is-waypoint anim-stagger " data-stagger='{"duration":0.3, "opacity":1, "y":0, "ease": "power3.out"}'><a href="#" class="album-button stagger-item"><span class="album-button__icon icon icon-itunes-filled"></span><span class="album-button__title">Buy on <br> iTunes</span></a><a href="#" class="album-button stagger-item"><span class="album-button__icon icon icon-googleplay"></span><span class="album-button__title">Buy on <br>GooglePlay</span></a>
                    <a
                      href="#" class="album-button stagger-item"><span class="album-button__icon icon icon-amazon"></span><span class="album-button__title">Buy on <br>Amazon</span></a>
                  </div>
                  <div id="audio-1605571ccec627" class="audio-player rascals-player-list anim-stagger is-waypoint " data-stagger='{"duration":0.3, "opacity":1, "y":0, "ease": "power2.out"}'>

                    <?php

// Check rows exists.
if( have_rows('detail') ):

    // Loop through rows.
    while( have_rows('detail') ) : the_row();

        // Load sub field value.
        $detail_name = get_sub_field('detail_name');
        $detail_content = get_sub_field('detail_content');
        // Do something...?>
        <div class="audio-player__item rascals-player-list__item stagger-item has-buttons">
                   <div class="audio-player__row">
                      <span class="audio-player__state" data-nr="1"><span class="audio-player__loader"></span></span><a href="/" class="rascals-player audio-player__track" data-list="audio-16056b682750cd"  data-nr="1" data-react-with=".rt-album-cover"></a>
                      <div class="audio-player__meta player-meta">
                         <h5 class="player-meta__title"><span class="player-meta__nr">1</span><?php echo $detail_name;?></h5>
                         <span class="player-meta__desc"><?php echo $detail_content;?></span>
                      </div>
                   </div>
                   <div class="audio-player__ctrl audio-ctrl audio-player__row"><span class="audio-ctrl__elapsed"></span><span class="audio-ctrl__total"></span><span class="audio-ctrl__progress"><span class="audio-ctrl__position"></span></span></div>
                </div>
    <?php
    // End loop.
    endwhile;

// No value.
else :
    // Do something...
endif;?>
                  </div>
                  <?php the_content() ;?>
                  <div class="post-footer">
                    <div class="share">
                        <?php
                // vars
                $links = get_field('social_links', 'option');
                if( $links ): ?>
                      <span class="icon icon-share"></span>
                      <a class="share-button fb-share-btn" target="_blank" href=<?php echo $links['facebook']['url']; ?>"><span class="icon icon-facebook"></span></a>
                      <a class="share-button twitter-share-btn" target="_blank" href="<?php echo $links['twitter']['url']; ?>"><span class="icon icon-twitter"></span></a>
                      <a class="share-button linkedin-share-btn" target="_blank" href="<?php echo $links['instagram']['url']; ?>"><span class="icon icon-instagram"></span></a>
                <?php endif; ?>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <!-- #fs-scroll__content -->
        </div>
        <!-- #fs-scroll -->
      </div>
      <!-- .fx -->
  <?php endwhile; ?>
  <?php endif;?>
<?php get_footer(); ?>
