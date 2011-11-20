# puppet-resolv_conf

Manage resolv.conf via Puppet

## How to use

```
    class { 'resolv_conf':
        domainname  => 'example.com',
        searchpath  => 'example.com',
        nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
    }
```

### Use dnsmasq

**You need saz-dnsmasq module**

```
    class { 'resolv_conf':
        domainname  => 'example.com',
        searchpath  => 'example.com',
        nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
        use_dnsmasq => true,
    }
```
