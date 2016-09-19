#
# Cookbook Name:: postfix
# Recipe:: default
#
# Copyright 2016, hitoshi iwamasa
#
# All rights reserved - Do Not Redistribute
#
package "postfix" do
  action :install
end

service "postfix" do
  action [ :enable, :start ]
end

template "main.cf" do
  path "/etc/postfix/main.cf"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[postfix]'
end

template "master.cf" do
  path "/etc/postfix/master.cf"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[postfix]'
end
