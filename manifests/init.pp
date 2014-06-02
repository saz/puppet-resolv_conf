class resolv_conf(
  $searchpath,
  $nameservers,
  $domainname = $::domain,
  $options = undef,
  $config_file = undef
) inherits resolv_conf::params {

  if $config_file {
    $resolv_conf_file = $config_file
    } else {
    $resolv_conf_file = $resolv_conf::params::config_file
  }

  file { 'resolv.conf':
    ensure  => file,
    path    => $resolv_conf_file,
    owner   => 'root',
    group   => $resolv_conf::params::group,
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
