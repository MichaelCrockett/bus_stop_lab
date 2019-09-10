 require('minitest/autorun')
 require('minitest/rg')
 require_relative('../bus.rb')
 require_relative('../person.rb')
 require_relative('../bus_stop.rb')

 class BusTest < MiniTest::Test

   def setup()
     @person1 = Person.new("Jon", 65)
     @person2 = Person.new("Jan", 66)
     @person3 = Person.new("Jim", 73)
     @bus = Bus.new("12", "CodeClan", [@person1])
     @bus_stop = BusStop.new("CodeClan Ave.", [])
   end

  def test_drive
    result = @bus.drive()
    assert_equal("Brum Brum", result)
  end

  def test_passengers
    assert_equal(1, @bus.passengers.count)
  end

  def test_add_passenger
    @bus.add_passenger(@person2)
    assert_equal(2, @bus.passengers.count)
  end

  def test_remove_passenger
    @bus.add_passenger(@person2)
    @bus.remove_passenger(@person1)
    assert_equal(1, @bus.passengers.count)
    assert_equal("Jan", @person2.name)
  end

  def test_remove_all_passengers
    @bus.empty
    assert_equal([], @bus.passengers)
  end

  # def test_pick_up_passengers
  #   @bus_stop.add_person(@person1)
  #   @bus_stop.add_person(@person3)
  #   @bus.pick_up_passengers(@bus_stop)
  #   assert_equal(3, @bus.passengers.count)
  #   assert_equal(0, @bus_stop.queue.count)

  # end

end
