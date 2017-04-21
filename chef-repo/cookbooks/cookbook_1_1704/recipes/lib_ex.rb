# cookbook_1_1704
#libraries

Chef::Recipe.send(:include, Oraclecorp)
myobj=Weblogic.new(10)
Chef::Log.info("Value is #{myobj.awesome_level_getter}")
