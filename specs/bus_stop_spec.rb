require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

  def setup
    @person1 = Person.new("Jon", 65)
    @person2 = Person.new("Jan", 66)
    @bus = Bus.new("12", "CodeClan", [@person1]
    @bus_stop = BusStop.new("CodeClan Ave.", [])
  end

  def test_add_person_to_queue
    result = @bus_stop.add_person(@person2)
    assert_equal([@person2], result)
  end
