define resolv_conf::create (
  $searchpath,
  $nameservers,
  $domainname = $::domain,
  $options = undef,
  $config_file = $::resolv_conf::params::config_file,
  $owner = 'root',
  $group = $::resolv_conf::params::group,
  $mode  = '0644'
) {

  include resolv_conf

  file { "resolv.conf.$name":
    ensure  => file,
    path    => $config_file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
