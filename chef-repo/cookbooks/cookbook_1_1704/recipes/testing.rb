#Cookbook Name:: cookbook_1_1704
# Recipe:: default
directory "#{node['cookbook_1_1704']['dir']}" do
  owner root
  group root
  mode 755
  recursive true
  action :create
end

cookbook_file "#{node['cookbook_1_1704']['dir']}/index.html" do
  source 'index.html'
  owner node['cookbook_1_1704']['owner']
  group node['cookbook_1_1704']['group']
  mode node['cookbook_1_1704']['mode']
  action :create
end