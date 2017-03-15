<?php
add_action( 'after_setup_theme', 'buck_setup' );
function buck_setup()
{
load_theme_textdomain( 'buck', get_template_directory() . '/languages' );
add_theme_support( 'title-tag' );
add_theme_support( 'automatic-feed-links' );
add_theme_support( 'post-thumbnails' );
global $content_width;
if ( ! isset( $content_width ) ) $content_width = 640;
register_nav_menus(
array( 'main-menu' => __( 'Main Menu', 'buck' ) )
);
}
add_action( 'wp_enqueue_scripts', 'buck_load_scripts' );
function buck_load_scripts()
{
wp_enqueue_script( 'jquery' );
}
add_action( 'comment_form_before', 'buck_enqueue_comment_reply_script' );
function buck_enqueue_comment_reply_script()
{
if ( get_option( 'thread_comments' ) ) { wp_enqueue_script( 'comment-reply' ); }
}
add_filter( 'the_title', 'buck_title' );
function buck_title( $title ) {
if ( $title == '' ) {
return '&rarr;';
} else {
return $title;
}
}
add_filter( 'wp_title', 'buck_filter_wp_title' );
function buck_filter_wp_title( $title )
{
return $title . esc_attr( get_bloginfo( 'name' ) );
}
add_action( 'widgets_init', 'buck_widgets_init' );
function buck_widgets_init()
{
register_sidebar( array (
'name' => __( 'Sidebar Widget Area', 'buck' ),
'id' => 'primary-widget-area',
'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
'after_widget' => "</li>",
'before_title' => '<h3 class="widget-title">',
'after_title' => '</h3>',
) );
}
function buck_custom_pings( $comment )
{
$GLOBALS['comment'] = $comment;
?>
<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>"><?php echo comment_author_link(); ?></li>
<?php 
}
add_filter( 'get_comments_number', 'buck_comments_number' );
function buck_comments_number( $count )
{
if ( !is_admin() ) {
global $id;
$comments_by_type = &separate_comments( get_comments( 'status=approve&post_id=' . $id ) );
return count( $comments_by_type['comment'] );
} else {
return $count;
}
}
function raymondjames_scripts() {
    wp_enqueue_style( 'style', get_template_directory_uri() . '/code/css/style.css', array(), true );
    wp_enqueue_style( 'catamaran font', 'https://fonts.googleapis.com/css?family=Catamaran:300,400,500,700', array(),  true );
    wp_enqueue_style( 'ilightbox style', get_template_directory_uri() .'/code/js/ilightbox/src/css/ilightbox.css', array(),  true );
    wp_enqueue_script( 'font awesome', 'https://use.fontawesome.com/2055193320.js', array(),  true );
    wp_enqueue_script( 'jquery migrate', 'https://code.jquery.com/jquery-migrate-1.4.1.js', array(),  true );
/*
    wp_enqueue_script( 'fancybox', get_template_directory_uri() . '/code/js/fancybox/source/jquery.fancybox.js', array(),  true );
    wp_enqueue_script( 'fancybox media', get_template_directory_uri() . '/code/js/fancybox/source/helpers/jquery.fancybox-media.js', array(),  true );
    wp_enqueue_style( 'fancybox style', get_template_directory_uri() .'/code/js/fancybox/source/jquery.fancybox.css', array(),  true );
*/
    wp_enqueue_script( 'expander', get_template_directory_uri() . '/code/js/jquery.expander.min.js', array(),  true );
    wp_enqueue_script( 'match height', get_template_directory_uri() . '/code/js/jquery.matchHeight-min.js', array(),  true );
    wp_enqueue_script( 'smooth scroll', get_template_directory_uri() . '/code/js/smooth-scroll.js', array(),  true );
    wp_enqueue_script( 'waypoints', get_template_directory_uri() . '/code/js/noframework.waypoints.min.js', array(),  true );
    wp_enqueue_script( 'custom script', get_template_directory_uri() . '/code/js/custom.js', array(),  true );
    wp_enqueue_script( 'ajax filter', get_template_directory_uri() . '/code/js/ajax-filter.js', array(),  true );
    wp_enqueue_script( 'vimeo controls', get_template_directory_uri() . '/code/js/Vimeo-jQuery-API/dist/jquery.vimeo.api.min.js', array(),  true );
}
add_action( 'wp_enqueue_scripts', 'raymondjames_scripts' );

add_action('init', 'remove_content_editor');

function remove_content_editor() {
    remove_post_type_support( 'page', 'editor' );
}