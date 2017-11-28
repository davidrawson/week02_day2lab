require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")
require_relative("../busstop")


class TestBus < MiniTest::Test

  def setup
    @passenger1 = Person.new("Simon", 21)
    @bus = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("New Street")
  end

  def test_drive
    assert_equal("brum brum", @bus.drive)
  end

  def test_number_of_passengers
    assert_equal(0 , @bus.number_of_passengers)
  end

  def test_add_passenger
    @bus.add_passenger(@passenger1)
    assert_equal(1, @bus.number_of_passengers)
  end

  def test_drop_off_passenger
    @bus.drop_off_passenger(@passenger1)
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_empty_bus
    @bus.add_passenger(@passenger1)
    @bus.add_passenger(@passenger1)
    @bus.add_passenger(@passenger1)
    @bus.empty_bus
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_pick_up_from_stop
    @bus_stop.add_passenger_to_queue(@passenger1)
    @bus_stop.add_passenger_to_queue(@passenger1)
    @bus_stop.add_passenger_to_queue(@passenger1)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(3, @bus.number_of_passengers)
    assert_equal(0, @bus_stop.number_in_queue)
  end

end
