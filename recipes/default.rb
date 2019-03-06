#
# Cookbook:: chef_crontab
# Recipe:: default
#
# MIT
#

# only run on supported platforms
if %w( amazon centos fedora debian oracle redhat suse opensuse ubuntu arch_linux  ).include? node['platform']
  node['chef_crontab']['entries'].each do |entry|
    cron "#{entry['name']}" do
      minute entry['minute'].to_s
      hour entry['hour'].to_s
      weekday entry['weekday'].to_s
      user entry['user'].to_s
      shell entry['shell'].to_s
      command entry['command'].to_s
      action entry['action'].to_sym
    end
  end
else
  log 'chef_crontab:unsupported_platform' do
    message "#{node['platform']} is not supported..."
    level :warn
  end
end
