require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test
def setup
  @Will = Customer.new("Will", 100, 30, 50)
  @Dave = Customer.new("Dave", 200, 27, 30)
  @Ben = Customer.new("Ben", 100, 15, 0)
  @Joe = Customer.new("Joe", 50, 30, 30)
  @Scott = Customer.new("Scott", 300, 19, 120)
  @Gin = Drink.new("Gin", 10, 10)
  @Beer = Drink.new("Beer", 5, 5 )
  @Wine = Drink.new("Wine", 15, 10)
  @Vodka = Drink.new("Vodka", 20, 15)
  @Chanter = Pub.new("Chanter", 100, [@Gin, @Beer, @Wine, @Vodka])
end

def test_customer_name
  assert_equal("Will", @Will.name)
end

def test_buy_drink__over_18
  @Will.buy_a_drink(@Chanter, @Beer)
  assert_equal(95, @Will.wallet)
  assert_equal(105, @Chanter.till)
end

def test_buy_drink__under_18
  @Ben.buy_a_drink(@Chanter, @Beer)
  assert_equal(100, @Ben.wallet)
  assert_equal(100, @Chanter.till)
end

def test_buy_drink__too_drunk
  @Scott.buy_a_drink(@Chanter, @Beer)
  assert_equal(300, @Scott.wallet)
  assert_equal(100, @Chanter.till)
  assert_equal(120, @Scott.drunkenness)
end

def test_buy_drink__not_drunk
  @Joe.buy_a_drink(@Chanter, @Gin)
  assert_equal(40, @Joe.wallet)
  assert_equal(110, @Chanter.till)
  assert_equal(40, @Joe.drunkenness)
end




end
