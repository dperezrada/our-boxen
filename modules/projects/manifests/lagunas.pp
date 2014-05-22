class projects::lagunas {
  include platanus::environment

  include java
  include android::sdk
  include android::tools
  include android::platform_tools

  # Install Gellybean 4.4.2
  android::version { '19':
    options => ['platform', 'add_on']
  }

  # Install cordova command line tools
  nodejs::module { 'cordova for ${platanus::environment::node_global}':
    module  => 'cordova',
    node_version => $platanus::environment::node_global,
  }

  # Install ionic command line tools
  nodejs::module { 'ionic for ${platanus::environment::node_global}':
    module  => 'ionic',
    node_version => $platanus::environment::node_global,
  }

}
