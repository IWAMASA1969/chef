#
# Cookbook Name:: clamav
# Recipe:: default
#
# Copyright 2016, Hitoshi Iwamasa
#
# All rights reserved - Do Not Redistribute
#
# http://www.clamav.net/documents/installing-clamav#rhel
package "clamav" do
  action :install
end

package "clamav-update" do
  action :install
end

template "freshclam.conf" do
  path "/etc/freshclam.conf"
  owner "root"
  group "root"
  mode 0644
end

template "freshclam" do
  path "/etc/sysconfig/freshclam"
  owner "root"
  group "root"
  mode 0644
end

#service "clamd" do
#  action [ :enable, :start ]
#end
