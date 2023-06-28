default['motd_attributes']['company'] = "O'Reilly" # rubocop:disable Style/FrozenStringLiteralComment
default['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = '/usr/local/bin/java'
default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"
