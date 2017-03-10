#
# Cookbook Name:: git_install
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file 'c:/chef/PortableGit-2.12.0-64-bit.exe' do
 source 'https://github.com/git-for-windows/git/releases/download/v2.12.0.windows.1/PortableGit-2.12.0-64-bit.7z.exe'
 action :create
end

execute 'install_git' do
 command 'c:/chef/PortableGit-2.12.0-64-bit.exe -s -a install'
end

=begin
include_recipe 'git_install::my_newfile'
include_recipe 'myfirstcookbk::default'

Chef::Log.info("I am in Default.rb")

Chef::Log.info("the value of the attribute defined in the attribute is #{node['myfirstcookbk']['New Param']}")
Chef::Log.info("the version of the attribute defined in the attribute is #{node['myfirstcookbk']['New Version']}")
=end
