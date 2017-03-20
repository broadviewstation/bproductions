<div class="clear"></div>
</div>
<footer id="footer" role="contentinfo">
<div id="locations">
<h3><?php echo get_field('footer_headline'); ?></h3>
  <?php
    if( have_rows('locations') ):
      while( have_rows('locations') ) : the_row();
        $address = get_sub_field('address');
        $phoneNums = "";
        if( have_rows('phone_numbers') ):
          while( have_rows('phone_numbers') ) : the_row();
            $label = get_sub_field('label');
            $num = get_sub_field('number');
            $phoneNums .= '<div class="num">'.$label.': '.$num.'</div>';
          endwhile;
        endif;
          
        if (get_sub_field('email')) :
          $email = get_sub_field("email");
        endif;
        
        $location = '<div class="location"><div class="address">'.$address.'</div>';
        $location .= '<div class="phone-numbers">'.$phoneNums.'</div>';
        $location .= '<a class="email" href="mailto:'.$email.'">'.$email.'</a></div>';
        echo $location;
      endwhile;
    endif;
  ?>
  <div id="locations-waypoint"></div>
  
</div>

<div id="footer-text">
  <?php echo get_field('footer_text', 5); ?>
  <div id="footer-text-waypoint"></div>
</div>
<div id="copyright">
  <img src="<?php echo get_field('footer_logo', 5); ?>" />
  <div class="cr-text">Copyright <?php echo date("Y"); ?></div>
</div>
</footer>
</div>
<?php wp_footer(); ?>
</body>
</html>