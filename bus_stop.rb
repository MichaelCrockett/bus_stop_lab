class BusStop

  attr_accessor :name, :queue

  def initialize(name, queue=[])
    @name = name
    @queue = queue
  end

  def empty_people
    for passenger in @queue
    @queue.delete(passenger)
  end
  end

  def add_person(person)
    @queue.push(person)
  end
end
