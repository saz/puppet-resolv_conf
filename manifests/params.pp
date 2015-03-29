# == Class: resolv_conf::params
#
# This base class contains default parameters
#
# === Variables
#
# === Inherits
#
class resolv_conf::params {
  case $::osfamily {
    'Debian', 'RedHat', 'Suse': {
      $config_file = '/etc/resolv.conf'
      $group       = 'root'
    }
    'FreeBSD': {
      $config_file = '/etc/resolv.conf'
      $group       = 'wheel'
    }
    'OpenBSD': {
      $config_file = '/etc/resolv.conf'
      $group       = 'wheel'
    }
    'Archlinux': {
      $config_file = '/etc/resolv.conf'
      $group       = 'root'
    }
    'Solaris': { }
    
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
