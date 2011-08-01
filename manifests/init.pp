class resolv_conf($domainname = $domain, $searchpath, $nameservers, $use_dnsmasq = false) {
    include resolv_conf::params, resolv_conf::config

    if $use_dnsmasq {
        dnsmasq::conf { 'local-dns':
            ensure => present,
            source => 'puppet:///modules/resolv_conf/dnsmasq_local-dns',
        }
    }
}
