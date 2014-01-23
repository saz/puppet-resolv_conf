class resolv_conf(
  $searchpath,
  $nameservers,
  $domainname = $::domain,
  $options = undef
) inherits resolv_conf::params {

  file { 'resolv.conf':
    ensure  => file,
    path    => $resolv_conf::params::config_file,
    owner   => 'root',
    group   => $resolv_conf::params::group,
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
