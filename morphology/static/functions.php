<?php
/* Permit widgets to land in our sidebar */
if ( function_exists('register_sidebar') )
    register_sidebar();

/* Disallow the top admin bar from showing up.
   This is only disallowed because the theme does not seem
   to properly render the admin bar. I'd appreciate if someone could
   try removing the add_filter() call and try the theme. */
add_filter( 'show_admin_bar', '__return_false' );
/* Permit the theme to accept "Featured images." This is used by the theme
   to support Facebook's og:image metadata, which lets us control which images
   are displayed. */
add_theme_support( 'post-thumbnails' );
set_post_thumbnail_size( 576, 9999 );
?>
