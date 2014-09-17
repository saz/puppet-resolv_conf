# == Class: resolv_conf
#
# This class initializes the resolv_conf class
#
# === Variables
#  [*nameservers*]
#  [*domainname*]
#  [*searchpath*]
#  [*options*]
#
# === Inherits
#  [*resolv_conf::params*]
#
# === Requires
#  [*puppetlabs-stdlib*](https://github.com/puppetlabs/puppetlabs-stdlib)
#
class resolv_conf(
  $nameservers = undef,
  $domainname = undef,
  $searchpath = [],
  $options = undef
) inherits resolv_conf::params {
  include stdlib

  validate_array( $nameservers )

  if ! $domainname and ! $searchpath {
    $domainname_real = $::domain
  } elsif $domainname and ! $searchpath {
    $domainname_real = $domainname
  }

  file { 'resolv.conf':
    ensure  => file,
    path    => $resolv_conf::params::config_file,
    owner   => 'root',
    group   => $resolv_conf::params::group,
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
