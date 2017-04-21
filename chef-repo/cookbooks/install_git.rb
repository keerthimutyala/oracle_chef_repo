# Cookbook Name:: git_install
# Recipe:: default
remote_file 'c:/chef' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
end