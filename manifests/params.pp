class resolv_conf::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $config_file = '/etc/resolv.conf'
        }
    }
}
