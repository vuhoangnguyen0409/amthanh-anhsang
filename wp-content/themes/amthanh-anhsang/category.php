<?php /** * Template Name: phanloai **/ get_header(); ?>
<div class="content">
    <?php $terms=get_terms( array( 'taxonomy'=> 'danh_muc_go', // taxonomy 'hide_empty' => false, ) ); echo '
    <ul class="category">'; foreach($terms as $term){ ?>
        <li><a href="<?php echo get_term_link($term) ;?>"><i class="fa fa-tag" aria-hidden="true"></i>&nbsp;<?php echo $term->name ;?></a>
        </li>
        <?php } ?> </div>
<!-- Footer -->
<?php get_footer(); ?>
