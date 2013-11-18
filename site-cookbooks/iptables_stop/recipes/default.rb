#
# Cookbook Name:: iptables_stop
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "iptables" do
  supports :status => true, :restart => true, :reload => true, :stop => true
  action [ :disable , :stop ]
end
