#
# Cookbook Name:: epel
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# add the EPEL repo
package "epel-release" do
  action :install
end
