require 'spec_helper'
describe 'resolv_conf' do

  let :default_params do
    {
      :searchpath  => 'example.com',
      :nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
      :domainname  => 'domain.tld',
    }
  end

  [
    {
      :searchpath  => 'example.com',
      :nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
      :domainname  => 'domain.tld',
    },
    {
      :searchpath  => ['example.com', 'example.de'],
      :nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
      :domainname  => 'example.com',
    },
    {
      :searchpath  => 'example.com',
      :nameservers => ['192.168.0.1', '192.168.1.1', '192.168.2.1'],
      :domainname  => 'example.com',
      :options     => ['timeout:2', 'attempts:3'],
    },
  ].each do |param_set|
    describe "when #{param_set == {} ? "using default" : "specifying"} class parameters" do

      let :param_hash do
        default_params.merge(param_set)
      end

      let :params do
        param_set
      end

      ['Debian', 'Redhat'].each do |osfamily|

        let :facts do
          {
            :osfamily => osfamily,
            :domain   => 'example.com',
          }
        end

        describe "on supported osfamily: #{osfamily}" do

          it { should contain_class('resolv_conf::params') }

          it {
            should contain_file('resolv.conf').with(
              'ensure'  => 'file',
              'path'    => '/etc/resolv.conf',
              'owner'   => 'root',
              'group'   => 'root',
              'mode'    => '0644'
            )
          }

          it 'should compile the template based on the class parameters' do
            content = param_value(
              subject,
              'file',
              'resolv.conf',
              'content'
            )
            expected_lines = [
              "domain #{param_hash[:domainname]}",
            ]

            if(!param_hash[:searchpath].empty?)
              if(param_hash[:searchpath].kind_of?(Array))
                expected_lines.push("search " + param_hash[:searchpath].join(" "))
              else
                expected_lines.push("search #{param_hash[:searchpath]}")
              end
            end

            param_hash[:nameservers].each do |ns|
                expected_lines.push("nameserver #{ns}")
            end

            if(param_hash[:options] && !param_hash[:options].empty?)
              expected_lines.push("options " + param_hash[:options].join(" "))
            end
            (content.split("\n") & expected_lines).should =~ expected_lines
          end
        end
      end
    end
  end
end
