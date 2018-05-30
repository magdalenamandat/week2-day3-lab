require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @Gin = Drink.new("Gin", 10)
    @Beer = Drink.new("Beer", 5)
    @Wine = Drink.new("Wine", 15)
    @Vodka = Drink.new("Vodka", 20)
    @Chanter = Pub.new("Chanter", 100, [@Gin, @Beer, @Wine, @Vodka])
  end

  def test_get_pub_name
    assert_equal("Chanter", @Chanter.name)
  end

  def test_number_of_drinks
    assert_equal(4, @Chanter.drinks_count())
  end

  def test_check_till_balance
    assert_equal(100, @Chanter.till())
  end


end
