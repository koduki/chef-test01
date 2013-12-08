#
# Cookbook Name:: setting_users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# operation users
user "vagrant" do
  comment "operation user"
  home "/home/vagrant"
  shell "/bin/zsh"
  group "users"
  supports :manage_home => true
end
