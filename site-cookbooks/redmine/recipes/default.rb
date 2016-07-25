#
# Cookbook Name:: redmine
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# reference site - http://www.redmine.org/
#                - https://github.com/chef/chef/issues/4050
#
directory '/var/lib/redmine' do
  owner 'root'
  group 'root'
  mode 0755
  action :create
end

subversion "redmine" do
  repository "https://svn.redmine.org/redmine/branches/3.3-stable"
  revision "HEAD"
  destination "/var/lib/redmine"
  action :sync
end
