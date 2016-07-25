#
# Cookbook Name:: svn
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# reference site - http://subversion.apache.org/
%w{subversion mod_dav_svn}.each do |pkg|
  package pkg do
    action :install
  end
end
