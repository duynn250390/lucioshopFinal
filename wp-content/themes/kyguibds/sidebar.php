<?php
        if ( is_active_sidebar('sidebar-1') ) {
                dynamic_sidebar( 'sidebar-1' );
        } else {
                _e('This is widget area. Go to Appearance -> Widgets to add some widgets.', 'thachpham');
        }
?>