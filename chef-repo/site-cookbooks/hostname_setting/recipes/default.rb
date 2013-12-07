#
# Cookbook Name:: hostname_setting
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# /etc/hosts setting
template "/etc/hosts" do
  source "etc/hosts.erb"
  owner "root"
  group "root"
  mode 0644
  variables({
    :hostname => node[:host_name]
  })
  notifies :restart, "service[network]"
end

# /etc/sysconfig/network setting
template "/etc/sysconfig/network" do
  source "etc/sysconfig/network.erb"
  owner "root"
  group "root"
  mode 0644
  variables({
    :hostname => node[:host_name]
  })
  notifies :restart, "service[network]"
end

service "network" do
  supports :start => true, :restart => true, :enable => true
end
