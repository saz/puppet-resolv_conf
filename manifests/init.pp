# == Class: resolv_conf
# @summary Manage resolv.conf settings
#
# @param nameservers
#   List of nameservers
# @param config_file
#   Config file
# @param config_template
#   Config template to use
# @param use_resolvconf
#   Wether or not to use resolvconf
# @param update_cmd
#   Update command to load resolv.conf.
#   Only needed on some OS
# @param package
#   Name of the package to install
# @param manage_package
#   Wether or not a package should be managed
# @param package_ensure
#   Ensure the state of the managed package
# @param domainname
#   Local domain name
# @param searchpath
#   Search list for host-name lookup
# @param options
#   Modify certain internal resolver variables
# @param mode
#   Config file mode
#
class resolv_conf (
  Array                         $nameservers,
  String                        $config_file,
  String                        $config_template,
  Boolean                       $use_resolvconf,
  Optional[String]              $update_cmd,
  Optional[String]              $package,
  Boolean                       $manage_package,
  String                        $package_ensure,
  Optional[String]              $domainname = undef,
  Variant[Array[String],String] $searchpath = [],
  Optional[Array]               $options    = undef,
  String                        $mode       = '0644',
) {
  if $domainname == undef and $searchpath == [] {
    $domainname_real = $facts['networking']['domain']
  } elsif $domainname != undef and $searchpath == [] {
    $domainname_real = $domainname
  } elsif $domainname != undef and $searchpath != [] {
    if $facts['os']['family'] != 'Solaris' {
      fail('domainname and searchpath are mutually exclusive parameters')
    }
  }

  if $manage_package {
    ensure_resource('package', $package, { 'ensure' => $package_ensure })
  }

  if $use_resolvconf {
    file { '/run/resolvconf/resolv.conf':
      ensure  => file,
      owner   => 'root',
      group   => 0,
      mode    => $mode,
      content => template("resolv_conf/${config_template}"),
    }
    file { '/etc/resolv.conf':
      ensure  => link,
      target  => '/run/resolvconf/resolv.conf',
      require => File['/run/resolvconf/resolv.conf'],
    }
  } else {
    file { $config_file:
      ensure  => file,
      owner   => 'root',
      group   => 0,
      mode    => $mode,
      content => template("resolv_conf/${config_template}"),
    }
  }

  if $update_cmd {
    exec { 'load resolv.conf in smf':
      command     => $update_cmd,
      refreshonly => true,
      subscribe   => File[$config_file],
    }
  }
}
