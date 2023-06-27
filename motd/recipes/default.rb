#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
cookbook_file '/etc/motd' do
  mode                       '0644'
  source                     'motd'
end
