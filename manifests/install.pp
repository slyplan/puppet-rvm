class rvm::install {

  Exec { path => $path }

  exec {"install rvm":
    command => "bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )",
    creates => "/usr/local/rvm",
    user    => root,
    require => [ Package["git-core"], Package["curl"] ]
  }

}