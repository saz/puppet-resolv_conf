class resolv_conf::solaris (
  $domainname,
  $searchpath,
  $nameservers,
  $options,
) {

  $nameservers_string = join($nameservers, ' ')

  exec { "/usr/sbin/svccfg -s dns/client setprop config/nameserver = net_address: '(${nameservers_string})'":
    unless => "/usr/sbin/svccfg -s dns/client listprop config/nameserver | grep '${nameservers_string}'",
  }
    
  $search_string = join(any2array($searchpath), ' ')

  exec { "/usr/sbin/svccfg -s dns/client setprop config/search = astring: '(\"${search_string}\")'":
    unless => "/usr/sbin/svccfg -s dns/client listprop config/search | grep '${search_string}'",
  }

}
