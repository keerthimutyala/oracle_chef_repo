#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
run_context.cookbook_collection.each do |key, cookbook|
  node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
  Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end
node.default['patching']['os'] = 'linux' #defining a normal attribute at recipe level
Chef::Log.info(node['patching']['os'])

## data_bag_item example
objeitem = data_bag_item('user','user_item')
Chef::Log.info(" i am in user data bag #{objeitem['monitor_config']}")

admins = data_bag('user')
admins.each do |login|
  admin = data_bag_item('user', login)
  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
  end

#delete data_bag_item below snippet is not working
#chef_data_bag_item 'user' do
#  attribute 'auto_linux_node'
#  action :delete # see actions section below
#end
end
