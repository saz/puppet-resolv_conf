source 'https://rubygems.org'
puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 2.7']

gem 'puppet', puppetversion

group :test do
  gem 'puppet-blacksmith'
  gem 'puppet-lint'
  gem 'puppetlabs_spec_helper'
  gem 'rake',                    '>=0.9.2.2'
  gem 'rspec-puppet',		 '=1.0.1'
end
