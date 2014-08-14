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
	action [ :start, :enable ]
end

#document_root = node["apache"]["document_root"]

template "/var/www/html/index.html" do
	source "index.html.erb"
	#owner "root"
	#group "root"
	#mode "0644"
end

