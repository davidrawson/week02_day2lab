class Bus

  def initialize(route_number, destination)
    @route_number = route_number.to_i
    @destination = destination
    @passengers = Array.new()
  end

  def drive()
    return "brum brum"
  end

  def number_of_passengers
    return @passengers.length()
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus
    @passengers = []
  end

end
