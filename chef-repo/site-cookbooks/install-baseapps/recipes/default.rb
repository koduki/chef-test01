#
# Cookbook Name:: install-baseapps
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#
# Install
#
%w{zsh tmux emacs-nox vim nkf zip unzip telnet}.each do |pkg|
  package pkg do
    action :install
  end
end

# 
# .skel setting
#
cookbook_file "/etc/skel/.tmux.conf" do
  source "etc/skel/.tmux.conf"
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/skel/.zshrc" do
  source "etc/skel/.zshrc"
  owner "root"
  group "root"
  mode 0644
end
