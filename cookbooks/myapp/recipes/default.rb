#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  action :create
  content 'Hello people'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end



