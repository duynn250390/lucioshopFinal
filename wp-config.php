<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'lucioshopdb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'f;4SqRaPT[+/fkr1cRPrb-mpC3F;RPXT2D?W,(}CVaA}|K)mM}2m%&(eh}3vUw2Z' );
define( 'SECURE_AUTH_KEY',  '1lo3lk=p)qa3; PPzgx YdLLLUG6eVl!4MC/I6$ky;!/j=gg?=3Vwr<`v*Ht(diY' );
define( 'LOGGED_IN_KEY',    '#O=YU_6w;QYkbnTzw+0|2RGj}-WvKD9)%[Y[s6@o8V6Q5 Y*]G7 wiTIX8jGf;_U' );
define( 'NONCE_KEY',        't~cBL=D*?_RI%/ZIGR(<JvVvexprCh-w0ww/aM.!HzZf-,P((G5CnZKFrkSzE_0u' );
define( 'AUTH_SALT',        '3LW_ghzH#7%b7E^MD-7)QANH[s/Ub-&t`L}BmaKy?G71&5/{pUScbP .qbijd56~' );
define( 'SECURE_AUTH_SALT', 'X9smG=`?Y[rtJY|U?Rz%^H:E(@x@Wq50:F0lydPU^Mp:cpQ=Z(Kidk!b*N7AuZ(^' );
define( 'LOGGED_IN_SALT',   'lHkO_F>EgQXgCYF^zt64X$g@hL03=vz>K |?q/XD&6pto*4h[*H9|.F`Jc2&5$UC' );
define( 'NONCE_SALT',       '?lDl1pwX,T=LkPRy[XBDU>M`!H;s:qf9w)WL6d!Na:X:FY  C:)zm_inI3VL)4x1' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
