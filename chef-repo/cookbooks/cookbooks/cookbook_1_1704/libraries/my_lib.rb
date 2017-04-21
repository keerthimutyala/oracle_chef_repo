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
end
