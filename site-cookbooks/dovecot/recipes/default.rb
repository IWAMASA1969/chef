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
