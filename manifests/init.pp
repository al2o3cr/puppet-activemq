class activemq {
    include homebrew
    include activemq::config

    file { [
      $activemq::config::configdir,
      $activemq::config::datadir,
      $activemq::config::logdir
    ]:
    ensure => directory
  }

  file { "${boxen::config::homebrewdir}/etc/activemq.xml":
    content => template('activemq/activemq.xml.erb'),
  }

  file { "${boxen::config::envdir}/activemq.sh":
    content => template('activemq/env.sh.erb'),
  }

  homebrew::formula { 'activemq':
    before => Package['boxen/brews/activemq'],
  }

  package { 'boxen/brews/activemq':
    ensure => '5.9.1-boxen1',
    notify => Service['dev.activemq'],
  }

  file { '/Library/LaunchDaemons/dev.activemq.plist':
    content => template('activemq/dev.activemq.plist.erb'),
    group   => 'wheel',
    notify  => Service['dev.activemq'],
    owner   => 'root'
  }

  service { 'dev.activemq':
    ensure  => running
  } 
}
