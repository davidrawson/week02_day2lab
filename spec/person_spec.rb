require("minitest/autorun")
require("minitest/rg")

require_relative("../person")

class TestPerson < MiniTest::T

 def setup
   @person = Person.new("Simon", 21)
 end

end
