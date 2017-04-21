#
# Cookbook Name:: cookbook_1_1704
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Log.info("Cookbook version is 0.1.1")
#Chef::Log.debug("Cookbook version is 0.1.1")

#remote_file 'c:/chef/Git-2.12.2.2-64-bit.exe' do
remote_file "c:/chef/#{node['cookbook_1_1704']['git_installer']}" do #using attributes
  source "https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['cookbook_1_1704']['git_installer']}"
  action :create
  not_if { File.exists?("C:/chef/#{node['cookbook_1_1704']['git_installer']}") }
end
execute 'install_git' do
  command 'c:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
  not_if { File.exists?('C:\Program Files (x86)\Git')} # Do not install if GIT already exists
end