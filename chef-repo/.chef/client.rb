log_level                :info
log_location             STDOUT
#chef_server_url          "https://api.chef.io/organizations/oracle_cc"
chef_server_url          "https://api.chef.io/organizations/keerthi_chef_training"
validation_client_name	 "oracle_cc-validator"
validation_key		     "c:/chef/validator.pem"
client_key				 "c:/chef/Client.pem" #client key gets generated once client is registered. validator.pem is no more required after this
http_proxy               "http://www-proxy.us.oracle.com:80"  
https_proxy              "http://www-proxy.us.oracle.com:80"
#node_name				 "my_win_node"