#
# Cookbook Name:: bundler
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
gem_package 'bundler' do
  gem_binary "/home/#{node['ruby-env']['user']}/.rbenv/versions/#{node['ruby-env']['version']}/bin/gem"
  action :install
end
