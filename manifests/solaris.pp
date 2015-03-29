class resolv_conf::solaris (
  $domainname,
  $searchpath,
  $nameservers,
  $options,
) {

  $nameservers_string = join($nameservers, ' ')

  exec { "/usr/sbin/svccfg -s svc:/network/dns/client setprop config/nameserver = net_address: '(${nameservers_string})'":
    unless => "/usr/sbin/svccfg -s svc:/network/dns/client listprop config/nameserver | grep '${nameservers_string}'",
    notify => Service['svc:/network/dns/client'],
  }
    
  $search_string = join(any2array($searchpath), ' ')

  exec { "/usr/sbin/svccfg -s svc:/network/dns/client setprop config/search = astring: '(\"${search_string}\")'":
    unless => "/usr/sbin/svccfg -s svc:/network/dns/client listprop config/search | grep '${search_string}'",
    notify => Service['svc:/network/dns/client'],
  }

  service { 'svc:/network/dns/client':
    ensure => running,
    enable => true,
  }

}
