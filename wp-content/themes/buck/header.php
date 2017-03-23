<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" />
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<div id="wrapper" class="hfeed">
<header id="header" role="banner">
<section id="branding">
</section>
<nav id="menu" role="navigation">
  <style>
    .menu-item-home a {
      background-image: url('<?php echo get_field("logo", 5);?>');
    }
  </style>
  <div class="nav-left"><?php wp_nav_menu( array( 'theme_location' => 'main-menu' ) ); ?></div>
  <div class="nav-right">
<?php if( have_rows('social_media_item', 5) ):

    while( have_rows('social_media_item', 5) ) : the_row();
        
        $url = get_sub_field('url');
        $icon = get_sub_field('icon');
        echo "<a href='".$url."'><img src='".$icon."' /></a>";
        
    endwhile;

    endif;
    ?>
  </div>
</nav>
<ul id="filter-nav">
  <?php
    echo '<li><button class="button is-checked" data-filter="*">All</button></li>';
    $categories = get_field('project_categories', 11);
    foreach( $categories as $category ) :
      echo '<li><button class="button" data-filter=".'.$category->slug.'">'.$category->name.'</button></li>';
        
    endforeach;
    wp_reset_postdata();

  ?>
</ul>

<ul id="filter-nav-mobile">
  <li class="first"><span>Choose service</span>
    <ul>
      <?php
        echo '<li><button class="button" data-filter="*">All</button></li>';
        $categories = get_field('project_categories', 11);
        foreach( $categories as $category ) :
          echo '<li><button class="button" data-filter=".'.$category->slug.'">'.$category->name.'</button></li>';
            
        endforeach;
        wp_reset_postdata();
      ?>
    </ul>
  </li>
</ul>

</header>
<div id="container">