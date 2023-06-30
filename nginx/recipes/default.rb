#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
package 'epel-release' do # rubocop:disable Style/FrozenStringLiteralComment
  action :install
end


package 'nginx' do # rubocop:disable Style/FrozenStringLiteralComment
  action :install
end

# or

# package 'epel-release'
# package 'nginx'

service 'nginx' do
  action [:start, :enable]
end

template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
  mode '0644'
end
