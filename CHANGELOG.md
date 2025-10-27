# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v8.0.0](https://github.com/saz/puppet-resolv_conf/tree/v8.0.0) (2025-10-27)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v7.0.0...v8.0.0)

**Breaking changes:**

- replace puppet requirement by openvox [\#82](https://github.com/saz/puppet-resolv_conf/pull/82) ([saz](https://github.com/saz))

**Implemented enhancements:**

- Use ensure\_resource insted of stdlib::ensure\_packages [\#79](https://github.com/saz/puppet-resolv_conf/pull/79) ([deric](https://github.com/deric))

## [v7.0.0](https://github.com/saz/puppet-resolv_conf/tree/v7.0.0) (2024-06-24)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v6.0.0...v7.0.0)

**Closed issues:**

- new forge release which allows stdlib 9.x and puppet 8 [\#73](https://github.com/saz/puppet-resolv_conf/issues/73)

**Merged pull requests:**

- prepare release: v7.0.0 [\#78](https://github.com/saz/puppet-resolv_conf/pull/78) ([saz](https://github.com/saz))
- Use stdlib:: namespace prefix for puppet 4.x function [\#77](https://github.com/saz/puppet-resolv_conf/pull/77) ([deric](https://github.com/deric))

## [v6.0.0](https://github.com/saz/puppet-resolv_conf/tree/v6.0.0) (2024-05-22)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v5.1.0...v6.0.0)

**Closed issues:**

- new forge release which allows stdlib 8.6.0 [\#71](https://github.com/saz/puppet-resolv_conf/issues/71)

**Merged pull requests:**

- release: v6.0.0 [\#76](https://github.com/saz/puppet-resolv_conf/pull/76) ([saz](https://github.com/saz))
- drop puppet6 support [\#75](https://github.com/saz/puppet-resolv_conf/pull/75) ([saz](https://github.com/saz))
- Update to module template files [\#74](https://github.com/saz/puppet-resolv_conf/pull/74) ([saz](https://github.com/saz))
- Allow puppet 8 and stdlib 9 [\#72](https://github.com/saz/puppet-resolv_conf/pull/72) ([deric](https://github.com/deric))

## [v5.1.0](https://github.com/saz/puppet-resolv_conf/tree/v5.1.0) (2023-05-26)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v5.0.0...v5.1.0)

**Closed issues:**

- Please update dependencies [\#69](https://github.com/saz/puppet-resolv_conf/issues/69)
- Request: allow puppetlabs-stdlib \<8.0.0 [\#65](https://github.com/saz/puppet-resolv_conf/issues/65)
- Support custom comment header [\#60](https://github.com/saz/puppet-resolv_conf/issues/60)

**Merged pull requests:**

- Update from modulesync\_config [\#70](https://github.com/saz/puppet-resolv_conf/pull/70) ([saz](https://github.com/saz))
- Allow stdlib v8 [\#68](https://github.com/saz/puppet-resolv_conf/pull/68) ([sazzle2611](https://github.com/sazzle2611))
- Update from saz modulesync\_config [\#67](https://github.com/saz/puppet-resolv_conf/pull/67) ([saz](https://github.com/saz))

## [v5.0.0](https://github.com/saz/puppet-resolv_conf/tree/v5.0.0) (2021-06-22)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v4.2.1...v5.0.0)

**Closed issues:**

- domainname and searchpath parameters are not mutually exclusive on RHEL [\#53](https://github.com/saz/puppet-resolv_conf/issues/53)

**Merged pull requests:**

- Modulesync [\#66](https://github.com/saz/puppet-resolv_conf/pull/66) ([saz](https://github.com/saz))

## [v4.2.1](https://github.com/saz/puppet-resolv_conf/tree/v4.2.1) (2020-09-03)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v4.2.0...v4.2.1)

**Closed issues:**

- New version on PuppetForge [\#64](https://github.com/saz/puppet-resolv_conf/issues/64)
- new release with puppetlabs/stdlib 6.x? [\#59](https://github.com/saz/puppet-resolv_conf/issues/59)

## [v4.2.0](https://github.com/saz/puppet-resolv_conf/tree/v4.2.0) (2020-09-03)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v4.1.0...v4.2.0)

**Closed issues:**

- Fix for Solaris 11 [\#62](https://github.com/saz/puppet-resolv_conf/issues/62)
- accept puppetlabs-stdlib with version 6.x [\#57](https://github.com/saz/puppet-resolv_conf/issues/57)

**Merged pull requests:**

- Fix for options in Solaris 11 [\#63](https://github.com/saz/puppet-resolv_conf/pull/63) ([bonivart](https://github.com/bonivart))
- Remove duplicates from the searchpath. [\#61](https://github.com/saz/puppet-resolv_conf/pull/61) ([vStone](https://github.com/vStone))
- allow puppetlabs/stdlib 6.x [\#58](https://github.com/saz/puppet-resolv_conf/pull/58) ([Dan33l](https://github.com/Dan33l))
- Update metadata to indicate Solaris compatibility [\#56](https://github.com/saz/puppet-resolv_conf/pull/56) ([gabe-sky](https://github.com/gabe-sky))

## [v4.1.0](https://github.com/saz/puppet-resolv_conf/tree/v4.1.0) (2019-01-22)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v4.0.0...v4.1.0)

**Closed issues:**

- accept puppetlabs-stdlib with version \> 5 [\#55](https://github.com/saz/puppet-resolv_conf/issues/55)
-  expects a value for parameter 'config\_file' [\#54](https://github.com/saz/puppet-resolv_conf/issues/54)
- Error while evaluating a Resource Statement upon release of v4.0.0 [\#51](https://github.com/saz/puppet-resolv_conf/issues/51)

**Merged pull requests:**

- Puppet \>= 4.9.3 is required for hiera 5 fixes \#51 [\#52](https://github.com/saz/puppet-resolv_conf/pull/52) ([blubbme](https://github.com/blubbme))

## [v4.0.0](https://github.com/saz/puppet-resolv_conf/tree/v4.0.0) (2018-06-29)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.3.0...v4.0.0)

**Closed issues:**

- New major release with puppet  [\#47](https://github.com/saz/puppet-resolv_conf/issues/47)
- deprecation warnings [\#46](https://github.com/saz/puppet-resolv_conf/issues/46)
- Issues with Debian 9 and Ubuntu 16.04 ? [\#45](https://github.com/saz/puppet-resolv_conf/issues/45)
- Deprecation warning with latest Puppet [\#38](https://github.com/saz/puppet-resolv_conf/issues/38)

**Merged pull requests:**

- Use special template for Solaris 11 to make file resource idempotent [\#50](https://github.com/saz/puppet-resolv_conf/pull/50) ([motley74](https://github.com/motley74))
- fix rubocop obsolete configuration [\#49](https://github.com/saz/puppet-resolv_conf/pull/49) ([archii](https://github.com/archii))
- Mode Parameterized [\#48](https://github.com/saz/puppet-resolv_conf/pull/48) ([RARYates](https://github.com/RARYates))
- migrate to puppet4 validations [\#40](https://github.com/saz/puppet-resolv_conf/pull/40) ([bastelfreak](https://github.com/bastelfreak))

## [v3.3.0](https://github.com/saz/puppet-resolv_conf/tree/v3.3.0) (2017-06-26)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.1.0...v3.3.0)

**Closed issues:**

- Can you add Linux/Amazon to the list of supported plattforms [\#43](https://github.com/saz/puppet-resolv_conf/issues/43)
- Options should be one-per-line [\#42](https://github.com/saz/puppet-resolv_conf/issues/42)

**Merged pull requests:**

- Make options be one-per-line not concatenated in one [\#41](https://github.com/saz/puppet-resolv_conf/pull/41) ([gabe-sky](https://github.com/gabe-sky))
- Updated maninfests/params.pp to allow for AIX configuration. [\#39](https://github.com/saz/puppet-resolv_conf/pull/39) ([andersonericw](https://github.com/andersonericw))
- Fix warning for xenial [\#37](https://github.com/saz/puppet-resolv_conf/pull/37) ([elmobp](https://github.com/elmobp))

## [v3.1.0](https://github.com/saz/puppet-resolv_conf/tree/v3.1.0) (2017-01-06)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.5...v3.1.0)

**Merged pull requests:**

- Adding documentation head to avoid puppet-style warning [\#36](https://github.com/saz/puppet-resolv_conf/pull/36) ([Spreadcat](https://github.com/Spreadcat))
- Make it work on solaris \< 10 [\#35](https://github.com/saz/puppet-resolv_conf/pull/35) ([brontitall](https://github.com/brontitall))
- allow overriding config\_file [\#34](https://github.com/saz/puppet-resolv_conf/pull/34) ([simonsd](https://github.com/simonsd))

## [v3.0.5](https://github.com/saz/puppet-resolv_conf/tree/v3.0.5) (2015-03-29)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.4...v3.0.5)

## [v3.0.4](https://github.com/saz/puppet-resolv_conf/tree/v3.0.4) (2015-03-29)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.3...v3.0.4)

**Closed issues:**

- files/dnsmasq\_local-dns doesn't appear to be used [\#30](https://github.com/saz/puppet-resolv_conf/issues/30)
- cut new forge release [\#28](https://github.com/saz/puppet-resolv_conf/issues/28)
- Unable to install on Centos 6.5 [\#27](https://github.com/saz/puppet-resolv_conf/issues/27)
- Can't clone into machine via vagrant [\#23](https://github.com/saz/puppet-resolv_conf/issues/23)

**Merged pull requests:**

- Add support for Solaris 11 [\#32](https://github.com/saz/puppet-resolv_conf/pull/32) ([zanloy](https://github.com/zanloy))
- files/dnsmasq\_local-dns is unused - remove it [\#31](https://github.com/saz/puppet-resolv_conf/pull/31) ([igalic](https://github.com/igalic))

## [v3.0.3](https://github.com/saz/puppet-resolv_conf/tree/v3.0.3) (2014-09-23)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.1...v3.0.3)

## [v3.0.1](https://github.com/saz/puppet-resolv_conf/tree/v3.0.1) (2014-09-23)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.2...v3.0.1)

## [v3.0.2](https://github.com/saz/puppet-resolv_conf/tree/v3.0.2) (2014-09-23)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v3.0.0...v3.0.2)

**Closed issues:**

- Missing dependency [\#24](https://github.com/saz/puppet-resolv_conf/issues/24)

**Merged pull requests:**

- Issue \#24 - Missing dependency [\#29](https://github.com/saz/puppet-resolv_conf/pull/29) ([myoung34](https://github.com/myoung34))
- $searchpath and empty array [\#26](https://github.com/saz/puppet-resolv_conf/pull/26) ([lingfish](https://github.com/lingfish))
- Error in the readme [\#25](https://github.com/saz/puppet-resolv_conf/pull/25) ([gerapeldoorn](https://github.com/gerapeldoorn))
- Fix metadata to work on pe 3.3 [\#21](https://github.com/saz/puppet-resolv_conf/pull/21) ([adamcrews](https://github.com/adamcrews))
- update template to use correct variable name in domain line [\#20](https://github.com/saz/puppet-resolv_conf/pull/20) ([sethlyons](https://github.com/sethlyons))
- Foreman related bug fix [\#19](https://github.com/saz/puppet-resolv_conf/pull/19) ([szynaka](https://github.com/szynaka))

## [v3.0.0](https://github.com/saz/puppet-resolv_conf/tree/v3.0.0) (2014-06-22)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v2.1.0...v3.0.0)

**Closed issues:**

- domain and search parameters mutually exclusive [\#16](https://github.com/saz/puppet-resolv_conf/issues/16)

**Merged pull requests:**

- support OpenBSD [\#17](https://github.com/saz/puppet-resolv_conf/pull/17) ([dcj](https://github.com/dcj))
- added SUSE default params [\#15](https://github.com/saz/puppet-resolv_conf/pull/15) ([lrupp](https://github.com/lrupp))

## [v2.1.0](https://github.com/saz/puppet-resolv_conf/tree/v2.1.0) (2014-04-25)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v2.0.0...v2.1.0)

**Closed issues:**

- spec tests [\#12](https://github.com/saz/puppet-resolv_conf/issues/12)

## [v2.0.0](https://github.com/saz/puppet-resolv_conf/tree/v2.0.0) (2014-01-23)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v1.0.4...v2.0.0)

**Closed issues:**

- Forge release? [\#10](https://github.com/saz/puppet-resolv_conf/issues/10)

**Merged pull requests:**

- add FreeBSD osfamily support [\#13](https://github.com/saz/puppet-resolv_conf/pull/13) ([fraenki](https://github.com/fraenki))

## [v1.0.4](https://github.com/saz/puppet-resolv_conf/tree/v1.0.4) (2013-12-03)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v1.0.3...v1.0.4)

**Merged pull requests:**

- access searchpath var as an instance var in erb template [\#11](https://github.com/saz/puppet-resolv_conf/pull/11) ([jhoblitt](https://github.com/jhoblitt))
- Fix variable reference deprecation warning [\#9](https://github.com/saz/puppet-resolv_conf/pull/9) ([fadenb](https://github.com/fadenb))
- Fully qualify 'domain' fact variable. [\#8](https://github.com/saz/puppet-resolv_conf/pull/8) ([trlinkin](https://github.com/trlinkin))

## [v1.0.3](https://github.com/saz/puppet-resolv_conf/tree/v1.0.3) (2012-12-20)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v1.0.2...v1.0.3)

**Merged pull requests:**

- Tiny cleanup [\#7](https://github.com/saz/puppet-resolv_conf/pull/7) ([joschi](https://github.com/joschi))

## [v1.0.2](https://github.com/saz/puppet-resolv_conf/tree/v1.0.2) (2012-11-09)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/v1.0.1...v1.0.2)

**Closed issues:**

- Detail: undefined method `join' for "example.com" [\#4](https://github.com/saz/puppet-resolv_conf/issues/4)
- "how to use" is unclear [\#1](https://github.com/saz/puppet-resolv_conf/issues/1)

**Merged pull requests:**

- add support for $::operatingsystem = gentoo  [\#6](https://github.com/saz/puppet-resolv_conf/pull/6) ([jhoblitt](https://github.com/jhoblitt))

## [v1.0.1](https://github.com/saz/puppet-resolv_conf/tree/v1.0.1) (2012-10-31)

[Full Changelog](https://github.com/saz/puppet-resolv_conf/compare/a03ea815ed1de31d34e0f17d6b1fd1a3c6325417...v1.0.1)

**Merged pull requests:**

- Support the "options" configuration option. [\#3](https://github.com/saz/puppet-resolv_conf/pull/3) ([razorsedge](https://github.com/razorsedge))
- Add RedHat osfamily support. [\#2](https://github.com/saz/puppet-resolv_conf/pull/2) ([razorsedge](https://github.com/razorsedge))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
