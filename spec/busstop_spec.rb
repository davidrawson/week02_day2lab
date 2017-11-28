require("minitest/autorun")
require("minitest/rg")

require_relative("../busstop")
require_relative("../person")


class TestBusStop < MiniTest::Test

 def setup
   @passenger1 = Person.new("Simon", 21)
   @bus_stop = BusStop.new("New Street")
 end

def test_add_passenger_to_queue
  @bus_stop.add_passenger_to_queue(@passenger1)
  assert_equal(1, @bus_stop.number_in_queue)
end


end
