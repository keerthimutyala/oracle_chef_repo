#self is used to create method as static
#example of module in ruby

module Oraclecorp
  class Weblogic
    attr_accessor :awesome_level
    def initialize(awesome_level_temp)
      @awesome_level = awesome_level_temp
    end
    def info
      puts "i m in method info"
    end
    def awesome_level_getter
      @awesome_level
    end
  end
  class Oracle
    attr_accessor :awesome_level
    def initialize(awesome_level_temp)
      @awesome_level = awesome_level_temp
    end
    def awesome_level_getter
      @awesome_level
    end
  end

  abc = Oraclecorp::Weblogic.new(100)
  efg = Oraclecorp::Oracle.new(200)
  puts abc.info
  puts abc.awesome_level_getter
  puts efg.awesome_level_getter
  puts Oraclecorp::Weblogic.info
end
