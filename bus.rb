class Bus

  attr_accessor :route_number, :destination, :passengers



  def initialize(route_number, destination, passengers=[])
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Brum Brum"
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def remove_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty
    for passenger in @passengers
      remove_passenger(passenger)
    end
  end

end
