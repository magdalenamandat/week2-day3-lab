require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test
def setup
  @Will = Customer.new("Will", 100, 30)
  @Ben = Customer.new("Ben", 100, 15)
  @Gin = Drink.new("Gin", 10)
  @Beer = Drink.new("Beer", 5)
  @Wine = Drink.new("Wine", 15)
  @Vodka = Drink.new("Vodka", 20)
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

end
