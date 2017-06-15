#
# Cookbook Name:: bind9
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "bind" do
  action :install
end

package "bind-chroot" do
  action :install
end
