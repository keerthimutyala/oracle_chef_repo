
class Oracle
  def initialize(oracle_tmp_level)
    @oracle_level=oracle_tmp_level
  end
  def oracle_level_getter
    raise "This is broken method" #raise an exception
    @oracle_level
  end
  def oracle_level_setter=(new_oracle_level)
    @oracle_level=new_oracle_level
  end
end

objectOracle=Oracle.new(10)
puts objectOracle.oracle_level_getter
objectOracle.oracle_level_setter=(97)
puts objectOracle.oracle_level_getter

##Inheritance example
class InheEx < Oracle
end

obj = InheEx.new(29)
puts obj.oracle_level_getter

##Exception Handling

#raise is similar to throw
#Exception class
begin
  objectOracle.oracle_level_getter
rescue Exception => Ex
  puts ex.message
  puts ex.inspect

end

## loops in ruby
