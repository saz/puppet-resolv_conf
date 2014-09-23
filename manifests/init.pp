class resolv_conf(
  $nameservers = undef,
  $domainname = undef,
  $searchpath = [],
  $options = undef
) inherits resolv_conf::params {
  validate_array( $nameservers )

  if ! $domainname and empty($searchpath) {
    $domainname_real = $::domain
  } elsif $domainname and empty($searchpath) {
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
