#
# Cookbook Name:: myfirstcookbk
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Log.info("I am in file my_newfile")
=begin
file '/etc/chef/index.php' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'root'
  group 'root'
end

directory '/home/nav/new' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

cookbook_file '/home/nav/new/index1.php' do
  source 'sample.php'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end



getdata = data_bag_item('listdb', 'itemlist')

Chef::Log.info("data from data bag item #{getdata['url']}")

Chef::Log.info(" The Nod name is #{node.name}")

admins = data_bag('listdb')
admins.each do |itemlist|
 admin = data_bag_item('listdb', itemlist)
 if node.name == admin.id
  Chef::Log.info("I am in #{node.name}")
 end
end
=end
Chef::Log.info("The NOde Name is #{node.name}")

