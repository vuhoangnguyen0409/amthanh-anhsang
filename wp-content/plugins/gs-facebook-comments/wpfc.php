<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              https://profiles.wordpress.org/qsheeraz#content-plugins
 * @since             1.0.0
 * @package           Wpfc
 *
 * @wordpress-plugin
 * Plugin Name:       WP Facebook Comments
 * Plugin URI:        https://profiles.wordpress.org/qsheeraz#content-plugins
 * Description:       This plugin lets people comment on content on your site using their Facebook account.
 * Version:           1.6
 * Author:            GenialSouls
 * Author URI:        https://profiles.wordpress.org/qsheeraz#content-plugins
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       gs-facebook-comments
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Currently plugin version.
 * Start at version 1.0.0 and use SemVer - https://semver.org
 * Rename this for your plugin and update it as you release new versions.
 */
define( 'WPFC_VERSION', '1.6' );

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-wpfc-activator.php
 */
function activate_wpfc() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-wpfc-activator.php';
	Wpfc_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-wpfc-deactivator.php
 */
function deactivate_wpfc() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-wpfc-deactivator.php';
	Wpfc_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_wpfc' );
register_deactivation_hook( __FILE__, 'deactivate_wpfc' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-wpfc.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_wpfc() {

	$plugin = new Wpfc();
	$plugin->run();

}
run_wpfc();
