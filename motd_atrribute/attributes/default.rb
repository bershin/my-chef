override['motd_attributes']['company'] = "O'Reilly"  # rubocop:disable Style/FrozenStringLiteralComment
default['motd_attributes']['company'] = "My'Reilly"
default['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = '/usr/local/bin/java'
default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"
default['motd_attributes']['message'] = "It's wonderful day!"

default['motd_attributes']['motd'] = [
  "This node is running on #{node['virtualization']['system']}",
  "The IP address of the node is #{node['ipaddress']}",
  node.default['motd_attributes']['message'],
  "Welcome to #{node['motd_attributes']['company']}",
  "JAVA_HOME on this node is #{node['motd_attributes']['java_home']}",
  "Java binary is #{node['motd_attributes']['java_bin']}",
  "Tomcat binary is #{node['motd_attributes']['tomcat_bin']}"
]
