# puppet-resolv_conf [![Build Status](https://secure.travis-ci.org/saz/puppet-resolv_conf.png)](http://travis-ci.org/saz/puppet-resolv_conf)

Manage resolv.conf via Puppet

## Usage

```
    class { 'resolv_conf':
      nameservers => ['192.168.1.1', '192.168.2.2', '192.168.3.3'],
    }
```

### Different domain than current machine

```puppet
    class { 'resolv_conf':
        nameservers => ['192.168.1.1', '192.168.2.2', '192.168.3.3'],
        domainname  => 'different.example.com',
    }
```

### Different searchpath

```puppet
    class { 'resolv_conf':
        nameservers => ['192.168.1.1', '192.168.2.2', '192.168.3.3'],
        searchpath  => ['sub1.example.com', 'sub2.example.com'],
    }
```
