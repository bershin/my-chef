#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
cookbook_file '/etc/motd' do
  mode                       '0644'
  source                     'motd'
end

cookbook_file '/etc/profile.d/motd.sh' do
  mode                       '0755'
  source                     'motd.sh'
end
