<?php
/**
 * Template Name: Portfolio Page Template
 */

?>

<?php get_header(); ?>
<div class="grid">
  <?php 
    
    $args = array(
        'post_type' => 'post',
    );
    $the_query = new WP_Query( $args );

     if ( $the_query->have_posts() ) :

      while ( $the_query->have_posts() ) : $the_query->the_post();
      
        $catIds = wp_get_post_categories(get_the_ID());
        $catSlugs = "";
        foreach ($catIds as $catId) :
          $category = get_term_by('id', $catId, 'category');
          $catSlugs .= $category->slug.' ';
        endforeach;
     ?>
      <div class="grid-item <?php echo $catSlugs; ?>">
        <img src="<?php echo get_field('thumbnail'); ?>" />
      </div>
    <?php 
      endwhile; 
      endif;
      ?>
</div>

<?php get_footer(); ?>