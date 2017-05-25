#
# Cookbook Name:: Apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
package 'httpd' do 
	Action :install
end

file '/var/www/html/index.html' do
	content '<h1>Hello ,World!</h1>'
end

service 'httpd' do
	action [:enable , :start]
end

