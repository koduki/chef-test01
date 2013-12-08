#
# Cookbook Name:: flume-ng-agent
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "flume-ng-agent" do
  action :install
end

template "/etc/flume-ng/conf/flume.conf" do
  source "etc/flume-ng/conf/flume.conf.collector.erb"
  owner "flume"
  group "root"
  mode 0644
  notifies :restart, "service[flume-ng-agent]"
end

service "flume-ng-agent" do
  action   :enable
  supports :start => true, :restart => true, :enable => true
end
