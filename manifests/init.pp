include resolv_conf::params

define resolv_conf (
  $searchpath,
  $nameservers,
  $domainname = $::domain,
  $options = undef,
  $config_file = $resolv_conf::params::config_file,
  $owner = 'root',
  $group = $resolv_conf::params::group,
  $mode  = '0644'
) {

  # if $config_file {
  #   $resolv_conf_file = $config_file
  #   } else {
  #   $resolv_conf_file = $resolv_conf::params::config_file
  # }

  file { "resolv.conf.$name":
    ensure  => file,
    path    => $resolv_conf_file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
