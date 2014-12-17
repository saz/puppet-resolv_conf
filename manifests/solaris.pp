class resolv_conf::solaris (
  $domainname,
  $searchpath,
  $nameservers,
  $options,
) {

  svccfg { 'resolv-nameserver':
    ensure => present,
    fmri => 'svc:/network/dns/client',
    property => 'config/nameserver',
    type => 'array',
    value => $nameservers,
  }

  svccfg { 'resolv-searchpath':
    ensure => present,
    fmri => 'svc:/network/dns/client',
    property => 'config/search',
    type => 'string',
    value => $searchpath,
  }

}
