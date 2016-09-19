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
