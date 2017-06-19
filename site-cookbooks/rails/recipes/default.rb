#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "devtools" do
  user "root"
  command 'yum -y groupinstall "Development Tools"'
  action :run
end

template "Gemfile" do
  path "#{node['rails-env']['gemfile_home']}/Gemfile"
  owner node['ruby-env']['user']
  group node['ruby-env']['group']
  mode 0644
end

execute "bundle install" do
  command "bundle install --path /home/#{node['ruby-env']['user']}/vendor/bundle"
  user node['ruby-env']['user']
  group node['ruby-env']['group']
  cwd node['rails-env']['gemfile_home']
end
