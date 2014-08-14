class people::ldlsegovia::osx {

  osx::recovery_message { 'If this Mac is found, please reach me at ldlsegovia@gmail.com': }

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::key_repeat_delay
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }
  include osx::global::tap_to_click
  include osx::global::natural_mouse_scrolling

  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps

  include osx::finder::show_removable_media_on_desktop
  include osx::finder::show_external_hard_drives_on_desktop

  include osx::no_network_dsstores

}
