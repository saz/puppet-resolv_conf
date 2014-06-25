class resolv_conf(
  $nameservers = undef,
  $domainname = undef,
  $searchpath = [],
  $options = undef
) inherits resolv_conf::params {

  if ! $domainname and ! $searchpath {
    $domainname_real = $::domain
  } elsif $domainname and ! $searchpath {
    $domainname_real = $domainname
  }

  if ! $nameservers {
    fail( "nameservers must be supplied" )
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
