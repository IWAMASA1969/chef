#
# Cookbook Name:: sshd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "sshd" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

template "sshd_config" do
  path "/etc/ssh/sshd_config"
  owner "root"
  group "root"
  mode 0600
  notifies :reload, 'service[sshd]'
end
