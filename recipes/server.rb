#
# Cookbook Name:: Apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'apache2' do 
	action :install
end

file '/var/www/html/index.html' do
	content "<h1>Hello ,World!</h1>
		<br>HOSTNAME : #{node['hostname']}
		<br>CPU : #{node['cpu']['0']['mhz']}
		<br>MEMORY: #{node['memory']['total']}
		<br>IPADDRESS: #{node['ipaddress']}
"
end

service 'apache2' do
	action [ :enable, :start ]
end
