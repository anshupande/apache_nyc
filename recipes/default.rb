#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
package "httpd" do
	action :install
end

service "httpd" do
	#supports :status => true, :restart => true, :reload => true
	action [ :start, :enable ]
end

template "/var/www/html/index.html" do
	source "index.html.erb"
	#owner "root"
	#group "root"
	#mode "0644"
end

