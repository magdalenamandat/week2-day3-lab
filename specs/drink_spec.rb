require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Gin", 10)
  end


  def test_price_of_drink
    assert_equal(10, @drink1.price)
  end

end
