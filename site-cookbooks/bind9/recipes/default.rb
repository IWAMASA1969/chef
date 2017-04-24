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
  supports :restart => true
end

if node['bind9']['zone']['type'] == 'slave'
  directory '/var/named/slaves/' do
    owner  'named'
    group  'named'
    mode   '0750'
    action :create
  end
end

if node['bind9']['zone']['type'] == 'master'
  cookbook_file '/var/named/masaxyz-labo.com.zone' do
    owner  'named'
    group  'named'
    mode   '00644'
  end

  cookbook_file '/var/named/zone.17.16.172.in-addr.arpa' do
    owner  'named'
    group  'named'
    mode   '00644'
  end
end

template "named.conf" do
  path "/etc/named.conf"
  owner "named"
  group "named"
  mode 0640
  notifies :restart, 'service[named]'
end
