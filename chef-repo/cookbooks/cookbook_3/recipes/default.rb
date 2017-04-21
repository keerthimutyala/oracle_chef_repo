#
# Cookbook Name:: cookbook_3
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/home/vagrant/test2' do
  source 'test2.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    test2_prod_names: node['cookbook_3']['prod_names']
  })
end
