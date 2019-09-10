 require('minitest/autorun')
 require('minitest/rg')
 require_relative('../bus.rb')
 require_relative('../person.rb')

 class BusTest < MiniTest::Test

   def setup()
     @person1 = Person.new("Jon", 65)
     @person2 = Person.new("Jan", 66)
     @bus = Bus.new("12", "CodeClan", [@person1])
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

end
