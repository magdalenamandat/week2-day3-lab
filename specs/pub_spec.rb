require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @gin = Drink.new("Gin", 10, 40)
    @beer = Drink.new("Beer", 5, 5)
    @wine = Drink.new("Wine", 15, 10 )
    @vodka = Drink.new("Vodka", 20, 45)
    @chanter = Pub.new("Chanter", 100, [@gin, @beer, @wine, @vodka], [])
  end

  def test_get_pub_name
    assert_equal("Chanter", @chanter.name)
  end

  def test_add_money()
    @chanter.add_money(10)
    assert_equal(110, @chanter.till)
  end

  def test_number_of_drinks
    assert_equal(4, @chanter.drinks_count())
  end

  def test_check_till_balance
    assert_equal(100, @chanter.till())
  end

  def test_check_total_stock_value
    assert_equal(50, @chanter.check_total_stock_value)
  end





end
