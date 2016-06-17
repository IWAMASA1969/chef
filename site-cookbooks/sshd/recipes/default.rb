#
# Cookbook Name:: sshd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "sshd_config" do
  path "/etc/ssh/sshd_config"
  owner "root"
  group "root"
  mode 0644
end
