class people::agustinf {
  include googledrive
  include textual
  include better_touch_tools
  include dropbox
  include iterm2::stable
  include wkhtmltopdf
  
  package { 'pandoc':
    source   => 'https://pandoc.googlecode.com/files/pandoc-1.11.1.dmg',
    provider => 'pkgdmg'
  }

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'agustin/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
