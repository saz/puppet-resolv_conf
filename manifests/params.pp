class resolv_conf::params {
  case $::osfamily {
    'Debian': {
      $config_file = '/etc/resolv.conf'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
}
