class platanus::environment{

  # Global versions
  $node_global = '0.10'

  # Node
  class { 'nodejs::global': version => $node_global }

  nodejs::module { "bower for ${node_global}":
    module  => 'bower',
    node_version => $node_global,
    ensure => '1.3.4'
  }

  nodejs::module { "grunt-cli for ${node_global}":
    module  => 'grunt-cli',
    node_version => $node_global,
    ensure => '0.1.13'
  }

  nodejs::module { "gulp for ${node_global}":
    module  => 'gulp',
    node_version => $node_global,
    ensure => '3.8.5'
  }

  nodejs::plugin { 'nodenv-vars':
    ensure => 'master',
    source => 'OiNutter/nodenv-vars'
  }

  # Ruby and gems
  class { 'ruby::global':
    version => '2.0.0'
  }

  ruby::gem { 'rails for 2.0.0':
    gem => 'rails',
    ruby => '2.0.0'
  }

  ruby::gem { 'bundler for 2.0.0':
    gem => 'bundler',
    ruby => '2.0.0'
  }

  ruby::gem { 'negroku for 2.0.0':
    gem     => 'negroku',
    ruby    => '2.0.0',
    version => '~> 1.1.4'
  }

  ruby::plugin { 'rbenv-vars':
    ensure => '3ffc5ce8cee564d3d892223add9548132ae22f8a',
    source  => 'sstephenson/rbenv-vars'
  }

  # Services
  include mysql

  # Applications
  include chrome
  include toggl

  # Development Tools
  include sequel_pro
  package { 'chromedriver': }

  # Communication
  include screenhero
  include hipchat

}
