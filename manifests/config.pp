class resolv_conf::config {
  $require_real = $::resolv_conf::use_dnsmasq ? {
    true    => Dnsmasq::Conf['local-dns'],
    default => undef,
  }

  file { 'resolv.conf':
    ensure  => file,
    path    => $resolv_conf::params::config_file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
    require => $require_real,
  }
}
