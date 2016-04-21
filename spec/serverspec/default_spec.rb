require 'spec_helper'
require 'serverspec'

package = 'mediawiki'
service = 'mediawiki'
config  = '/etc/mediawiki/mediawiki.conf'
user    = 'mediawiki'
group   = 'mediawiki'
ports   = []
log_dir = '/var/log/mediawiki'
db_dir  = '/var/lib/mediawiki'

case os[:family]
when 'freebsd'
  package = 'mediawiki126'
end

describe package(package) do
  it { should be_installed }
end 

# describe file(config) do
#   it { should be_file }
#   its(:content) { should match Regexp.escape('mediawiki') }
# end
# 
# describe file(log_dir) do
#   it { should exist }
#   it { should be_mode 755 }
#   it { should be_owned_by user }
#   it { should be_grouped_into group }
# end
# 
# describe file(db_dir) do
#   it { should exist }
#   it { should be_mode 755 }
#   it { should be_owned_by user }
#   it { should be_grouped_into group }
# end
# 
# case os[:family]
# when 'freebsd'
#   describe file('/etc/rc.conf.d/mediawiki') do
#     it { should be_file }
#   end
# end
# 
# describe service(service) do
#   it { should be_running }
#   it { should be_enabled }
# end
# 
# ports.each do |p|
#   describe port(p) do
#     it { should be_listening }
#   end
# end
