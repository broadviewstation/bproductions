<?php
/**
 * Template Name: Home Page Template
 */

?>

<?php get_header(); ?>
  <div id="hero">
    <div id="image-to-video">
      <div class="hero-image">
        <div class="img-container">
          <img src="<?php echo get_field('hero_image'); ?>" />
          <?php
            if ( get_field('link_text') ):
      
              $videoUrl = get_field('video_url');
              $linkText = get_field('link_text');
              echo "<div class='watch-vid'><p>".$linkText."</p>";
              echo "<a class='show-vid'><i class='fa fa-play-circle' aria-hidden='true'></i></a></div>";
            endif;
          ?>
        </div>
      </div>
      <div class="videoWrapper">
        <?php the_field('video_url'); ?>    
        <div class="close-video"><i class="fa fa-times-circle" aria-hidden="true"></i></div>    
      </div>

    </div>
  </div>
