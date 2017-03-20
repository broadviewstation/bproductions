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

  <style>
    #parallax-region { 
      background-image: url("<?php echo get_field('background_image'); ?>");
    }
  </style>
  
  <div id="parallax-region">
    <div id="parallax-waypoint"></div>
    <div class="parallax-text"><?php echo get_field('text'); ?></div>
  </div>
  <div class="two-col">
    <div id="two-col-waypoint"></div>
    <div class="col-one col">
      <div id="col-margin">
        <?php echo get_field('text_sidebar'); ?>
      </div>
    </div>
    <div class="col-two col">
      <div id="logo-grid-margin">
      <?php
        if( have_rows('logo_grid') ):
          while( have_rows('logo_grid') ) : the_row();
            $gridImg = get_sub_field('logo');
            if (get_sub_field('url')) {
              $gridUrl = get_sub_field('url');
              echo '<a class="grid-item" href="'.$gridUrl.'"><img src="'.$gridImg.'" /></a>';
            } else echo '<div class="grid-item"><img src="'.$gridImg.'" /></div>';
          endwhile;
        endif;
      ?>
      </div>
    </div>
  </div>
  <div id="four-image-band">
      <?php
        if( have_rows('images') ):
          while( have_rows('images') ) : the_row();
            $imgBand = get_sub_field('image');
            echo '<img class="four-img" src="'.$imgBand.'" />';
          endwhile;
        endif;
      ?>
      <div id="four-image-waypoint"></div>

  </div>
<?php get_footer(); ?>
