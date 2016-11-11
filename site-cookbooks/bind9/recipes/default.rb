#
# Cookbook Name:: bind9
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{bind bind-utils bind-chroot}.each do |pkg|
  package pkg do
    action :install
  end
end

service "named" do
  action [ :enable, :start ]
end

template "named.conf" do
  path "/etc/named.conf"
  owner "named"
  group "named"
  mode 0640
  notifies :reload, 'service[named]'
end
