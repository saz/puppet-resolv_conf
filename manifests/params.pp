class resolv_conf::params {
  case $::osfamily {
    'Debian', 'RedHat': {
      $config_file = '/etc/resolv.conf'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
}
