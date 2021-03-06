# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "keerthim"
client_key               "#{current_dir}/keerthim.pem"
chef_server_url          "https://api.chef.io/organizations/oracle_cc"
cookbook_path            ["#{current_dir}/../cookbooks"]
http_proxy               "http://www-proxy.us.oracle.com:80"  
https_proxy              "http://www-proxy.us.oracle.com:80"