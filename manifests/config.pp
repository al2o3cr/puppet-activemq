# Config vars and files for activemq.
#
# Usage:
#
#     include activemq::config
class activemq::config {
  require boxen::config

  $configdir  = "${boxen::config::configdir}/activemq"
  $datadir    = "${boxen::config::datadir}/activemq"
  $executable = "${boxen::config::home}/homebrew/bin/activemq"
  $logdir     = "${boxen::config::logdir}/activemq"
  $port       = 61616
  $stomp_port = 61613
}
