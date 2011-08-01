class resolv_conf($domain = $domain, $searchpath, $nameservers, $use_dnsmasq = false) {
    include resolv_conf::params, resolv_conf::config

    if $use_dnsmasq {
        class { 'dnsmasq':
            domain      => $domain,
            searchpath  => $searchpath,
            nameservers => $nameservers,
        }
    }
}
