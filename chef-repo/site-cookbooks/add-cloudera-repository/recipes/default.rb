#
# Cookbook Name:: flume-ng
# Cookbook Name:: add-cloudera-repository
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
yum_key "PM-GPG-KEY-cloudera" do
  url "http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera"
  action :add
end

yum_repository "cloudera-cdh4" do
  description "Cloudera's Distribution for Hadoop, Version 4"
  url "http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/4"
  action :add
end
