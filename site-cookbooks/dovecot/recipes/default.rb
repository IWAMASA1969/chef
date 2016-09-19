#
# Cookbook Name:: dovecot
# Recipe:: default
#
# Copyright 2016, hitoshi iwamasa
#
# All rights reserved - Do Not Redistribute
#
package "dovecot" do
  action :install
end

service "dovecot" do
  action [ :enable, :start ]
end

template "dovecot.conf" do
  path "/etc/dovecot/dovecot.conf"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[dovecot]'
end

template "10-mail.conf" do
  path "/etc/dovecot/conf.d/10-mail.conf"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[dovecot]'
end

template "10-auth.conf" do
  path "/etc/dovecot/conf.d/10-auth.conf"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[dovecot]'
end
