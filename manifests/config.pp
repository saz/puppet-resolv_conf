class resolv_conf::config {
    file { 'resolv.conf':
        path    => $resolv_conf::params::config_file,
        ensure  => file,
        owner   => root,
        group   => root,
        mode    => 644,
        content => template('resolv_conf/resolv.conf.erb'),
    }
}
