<?php
/**
* Template Name: Contact
**/
get_header();
?>
<div class="content--fullscreen content--builder">
   <div class="fx-smooth-move fs">
     <div class="fs__image fx-smooth-move-bg fx-smooth-move-layer" style="background-image: url(<?php bloginfo('template_directory');?>/img/bg/contact-bg.jpg)"></div>
      <div class="fade-layer" style="opacity:0.8"></div>
      <div id="fs-scroll" class="fs-scroll--v">
         <div id="fs-scroll__content">
            <div class="container--full" style="padding-top:300px;padding-bottom:300px">
               <div data-elementor-type="wp-page" data-elementor-id="72" class="elementor elementor-72" data-elementor-settings="[]">
                  <div class="elementor-inner">
                     <div class="elementor-section-wrap">
                        <section class="elementor-section elementor-top-section elementor-element elementor-element-6382b2a6 elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="6382b2a6" data-element_type="section">
                           <div class="elementor-container elementor-column-gap-default">
                              <div class="elementor-row">
                                 <?php if (have_posts()): while (have_posts()): the_post(); the_content(); endwhile; endif; ?>
                            </div>


                                    </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </section>
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
</div>
<?php get_footer(); ?>
