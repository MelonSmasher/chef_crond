name 'chef_crontab'
maintainer 'Alex Markessinis'
maintainer_email 'markea125@gmail.com'
license 'MIT'
description 'Configures crontab through Chef attributes.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'
chef_version '>= 12.1' if respond_to?(:chef_version)

%w( amazon centos fedora debian oracle redhat suse opensuse ubuntu arch_linux ).each do |os|
  supports os
end

issues_url 'https://github.com/MelonSmasher/chef_crontab/issues' if respond_to?(:issues_url)
source_url 'https://github.com/MelonSmasher/chef_crontab' if respond_to?(:source_url)