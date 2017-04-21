#Cookbook Name:: cookbook_1_1704
#Recipe: attributes

#This file is used for understanding the concept of templates resource. We are going to copy a sudoerrs.erb template file to mentioned dest location
#And the values in the template file are dynamically changed. Required Attributes needs to defined in attributes file
#Refer https://docs.chef.io/resource_template.html

template '/home/vagrant/sudoerrs' do
  source 'sudoerrs.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    sudoerrs_groups: node['cookbook_1_1704']['sudo']['groups'],
    sudoerrs_users: node['cookbook_1_1704']['sudo']['users']
    #passwordless: true
  })
end
