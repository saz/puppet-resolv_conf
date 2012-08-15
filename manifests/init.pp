class resolv_conf(
  $searchpath,
  $nameservers,
  $domainname = $domain,
  $use_dnsmasq = false
) {
  include resolv_conf::params
  include resolv_conf::config

  if $use_dnsmasq {
    dnsmasq::conf { 'local-dns':
      ensure => present,
      source => 'puppet:///modules/resolv_conf/dnsmasq_local-dns',
    }
  }
}
