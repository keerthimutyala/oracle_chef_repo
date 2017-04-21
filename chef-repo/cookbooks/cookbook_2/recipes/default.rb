#
# Cookbook Name:: cookbook_2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/home/vagrant/test1' do
  source 'test1.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    test1_os_names: node['cookbook_2']['os_names']
  })
end
