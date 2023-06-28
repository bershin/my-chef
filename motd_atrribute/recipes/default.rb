#
# Cookbook:: motd_atrribute
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
cookbook_file '/etc/profile.d/motd.sh' do
  mode                       '0755'
  source                     'motd.sh'
end

template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end
