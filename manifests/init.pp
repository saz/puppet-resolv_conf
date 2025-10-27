# == Class: resolv_conf
#
# This class initializes the resolv_conf class
#
# === Variables
#  [*nameservers*]
#  [*domainname*]
#  [*searchpath*]
#  [*options*]
#
# === Requires
#  [*puppetlabs-stdlib*](https://github.com/puppetlabs/puppetlabs-stdlib)
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
