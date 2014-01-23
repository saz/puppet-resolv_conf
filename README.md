# puppet-resolv_conf [![Build Status](https://secure.travis-ci.org/saz/puppet-resolv_conf.png)](http://travis-ci.org/saz/puppet-resolv_conf)

Manage resolv.conf via Puppet

## Show some love
If you find this module useful, send some bitcoins to 1Na3YFUmdxKxJLiuRXQYJU2kiNqA3KY2j9

## Usage

```
    class { 'resolv_conf':
      searchpath  => 'example.com',
      nameservers => ['192.168.1.1', '192.168.2.2', '192.168.3.3'],
    }
```

## Class parameters
* searchpath: String or Array. Required. List of search domains
* nameservers: Array. Required. List of nameservers
* domainname: String. Default: $::domain
* options: Array. Default: empty
