class resolv_conf::params {
  case $::osfamily {
    'Debian', 'RedHat': {
      $config_file = '/etc/resolv.conf'
      $group       = 'root'
    }
    'FreeBSD': {
      $config_file = '/etc/resolv.conf'
      $group       = 'wheel'
    }
    default: {
      case $::operatingsystem {
        gentoo: {
          $config_file = '/etc/resolv.conf'
          $group       = 'root'
        }
        default: {
          fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
        }
      }
    }
  }
}
