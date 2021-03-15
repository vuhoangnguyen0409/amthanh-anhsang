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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db-amthanh-anhsang' );

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
define( 'AUTH_KEY',         'D;C,[mTPv}RMuWt`{)tt=n2G}`/9&BK8jCvPJW,IZ`W|Dkn9y=d4o?7O2z$Sm(m3' );
define( 'SECURE_AUTH_KEY',  'g *46SaHx]&)<H, #6Pn)fgT,H{y(.K_f!OCD*[t6<M>t=LpY;Y4-!|2BTtire9b' );
define( 'LOGGED_IN_KEY',    'V!oNQn?1jUe!4/ADzOKmV4F=`Cn!j-~a%dFvJl?e1T-P?u82m~LWx[I% l2u(+o7' );
define( 'NONCE_KEY',        '#GW/3Uf_v1C7[I>qvj(jWwqPtBkPc0<IYh9;j8a4ZQZ!@+gnjYtL2hG/wx/XL~-q' );
define( 'AUTH_SALT',        'oY[L#$/dvR(sg-EI aVjjqLurN9xk)T62eIpocl,kQ)%Ab5VTX)i*$iRsB9}2U|D' );
define( 'SECURE_AUTH_SALT', 'ib69U!1%FiP2=8%|@;LKqR6z(W`m!V#<s,W4a{MxyR#W{.EhabaMkZY5pN*rfcZ3' );
define( 'LOGGED_IN_SALT',   'P(2gh*Pi~5%Qb~d+Z,kdRT^du@Dt+xInX?gL,zN(x02x_1[y;Go>Ol#/SOIW`X..' );
define( 'NONCE_SALT',       'M{<#3sZ@f&xesIrlJ7P8)KVrMQp+3z|x^YaV29d(~BMIh6@!WX&_6zi^@Mszk$i:' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
