class resolv_conf::solaris (
  $domainname,
  $searchpath,
  $nameservers,
  $options,
) {

  $nameserver_string = join(any2array($nameserver), ' ')

  exec { "/usr/sbin/svccfg -s dns/client setprop config/nameserver = net_address: \"(${nameserver_string})\"":
    unless => "/usr/sbin/svccfg -s dns/client listprop config/nameserver | grep \"${nameserver_string}\"",
  }
    
}
