# Cookbook Name:: cookbook_1_1704
# default.rb
default['cookbook_1_1704']['git_installer'] = 'Git-2.12.2.2-64-bit.exe'
default['cookbook_1_1704']['mode']	= '755'
if node['platform'] == 'windows'
	default['cookbook_1_1704']['dir'] = 'c:/chef/public_html'
	default['cookbook_1_1704']['owner'] = 'Admin'
	default['cookbook_1_1704']['group']	= 'Admin'
else
	default['cookbook_1_1704']['dir'] = '/var/www/customers/public_html/'
	default['cookbook_1_1704']['owner'] = 'root'
	default['cookbook_1_1704']['group']	= 'root'
end
default['cookbook_1_1704']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['cookbook_1_1704']['sudo']['users'] = [ 'jerry', 'greg']
