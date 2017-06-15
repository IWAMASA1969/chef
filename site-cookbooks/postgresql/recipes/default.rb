#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{postgresql96-server postgresql96-devel postgresql96-contrib}.each do |pkg|
  package pkg do
    action :install
  end
end

service "postgresql-9.6" do
  action [ :enable, :start ]
end
