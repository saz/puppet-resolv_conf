class resolv_conf(
  $searchpath,
  $nameservers,
  $domainname = $domain,
  $options = [],
  $use_dnsmasq = false
) inherits resolv_conf::params {

  if $use_dnsmasq {
    dnsmasq::conf { 'local-dns':
      ensure => present,
      source => 'puppet:///modules/resolv_conf/dnsmasq_local-dns',
    }
  }

  $require_real = $use_dnsmasq ? {
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
