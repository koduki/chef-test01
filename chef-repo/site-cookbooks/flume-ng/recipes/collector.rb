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

#
# install plugins
#
plugin_dir = "usr/lib/flume-ng/plugins.d"
plugin_name = "simple-file-sink"
plugin_version = "1.0-SNAPSHOT"

directory "/#{plugin_dir}/#{plugin_name}/lib/" do
  mode 00755
  owner "flume"
  group "flume"
  action :create
  recursive true
end

cookbook_file "/#{plugin_dir}/#{plugin_name}/lib/#{plugin_name}-#{plugin_version}.jar" do
  puts "#{plugin_dir}/#{plugin_name}/lib/#{plugin_name}-#{plugin_version}.jar"
  source "#{plugin_dir}/#{plugin_name}/lib/#{plugin_name}-#{plugin_version}.jar"
  action :create
end

#
# setting config
#
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
