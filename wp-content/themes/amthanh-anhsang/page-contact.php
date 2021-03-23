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
                                 <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-398ee526" data-id="398ee526" data-element_type="column">
                                    <div class="elementor-column-wrap elementor-element-populated">
                                       <div class="elementor-widget-wrap">
                                          <div class="elementor-element elementor-element-600e1ceb animated-fast  elementor-widget elementor-widget-heading" data-id="600e1ceb" data-element_type="widget" data-settings="{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1400,&quot;_animation_mobile&quot;:&quot;none&quot;}" data-widget_type="heading.default">
                                             <div class="elementor-widget-container">
                                                <h1 class="elementor-heading-title elementor-size-default">Let's talk</h1>
                                             </div>
                                          </div>
                                          <div class="elementor-element elementor-element-32417c4 animated-fast  elementor-widget elementor-widget-shortcode" data-id="32417c4" data-element_type="widget" data-settings="{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1500,&quot;_animation_mobile&quot;:&quot;none&quot;}" data-widget_type="shortcode.default">
                                             <div class="elementor-widget-container">
                                                <div class="elementor-shortcode">
                                                   <div role="form" class="wpcf7" id="wpcf7-f264-p72-o1" lang="en-US" dir="ltr">
                                                      <div class="screen-reader-response">
                                                         <p role="status" aria-live="polite" aria-atomic="true"></p>
                                                         <ul></ul>
                                                      </div>
                                                      <form action="/demo/vex/demo1/contact/#wpcf7-f264-p72-o1" method="post" class="wpcf7-form init" novalidate="novalidate" data-status="init">
                                                         <div style="display: none;">
                                                            <input type="hidden" name="_wpcf7" value="264" />
                                                            <input type="hidden" name="_wpcf7_version" value="5.3" />
                                                            <input type="hidden" name="_wpcf7_locale" value="en_US" />
                                                            <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f264-p72-o1" />
                                                            <input type="hidden" name="_wpcf7_container_post" value="72" />
                                                            <input type="hidden" name="_wpcf7_posted_data_hash" value="" />
                                                         </div>
                                                         <div class="mailbox">
                                                            <div class="mailbox__message"><span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Message*"></textarea></span></div>
                                                            <div class="mailbox__name"><span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Full Name" /></span></div>
                                                            <div class="mailbox__email"><span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email Address*" /></span></div>
                                                            <div class="mailbox__submit magneto"><input type="submit" value="Submit" class="wpcf7-form-control wpcf7-submit" /></div>
                                                         </div>
                                                         <div class="wpcf7-response-output" aria-hidden="true"></div>
                                                      </form>
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
