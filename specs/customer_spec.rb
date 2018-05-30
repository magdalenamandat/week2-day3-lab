require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test
def setup
  @will = Customer.new("Will", 100, 30, 50)
  @dave = Customer.new("Dave", 200, 27, 30)
  @ben = Customer.new("Ben", 100, 15, 0)
  @joe = Customer.new("Joe", 50, 30, 30)
  @scott = Customer.new("Scott", 300, 19, 120)
  @gin = Drink.new("Gin", 10, 10)
  @beer = Drink.new("Beer", 5, 5 )
  @wine = Drink.new("Wine", 15, 10)
  @vodka = Drink.new("Vodka", 20, 15)
  @chip = Food.new("Chips", 5, 10)
  @pasta = Food.new("Pasta", 10, 20)
  @salad = Food.new("Salad", 15, 5)
  @chanter = Pub.new("Chanter", 100, [@gin, @beer, @wine, @vodka], [@chip, @pasta, @salad])
end

def test_customer_name
  assert_equal("Will", @will.name)
end

def test_buy_drink__over_18
  @will.buy_a_drink(@chanter, @beer)
  assert_equal(95, @will.wallet)
  assert_equal(105, @chanter.till)
end

def test_buy_drink__under_18
  @ben.buy_a_drink(@chanter, @beer)
  assert_equal(100, @ben.wallet)
  assert_equal(100, @chanter.till)
end

def test_buy_drink__too_drunk
  @scott.buy_a_drink(@chanter, @beer)
  assert_equal(300, @scott.wallet)
  assert_equal(100, @chanter.till)
  assert_equal(120, @scott.drunkenness)
end

def test_buy_drink__not_drunk
  @joe.buy_a_drink(@chanter, @gin)
  assert_equal(40, @joe.wallet)
  assert_equal(110, @chanter.till)
  assert_equal(40, @joe.drunkenness)
end

def test_buy_food
  @will.buy_food(@chanter, @chip)
  assert_equal(95, @will.wallet)
  assert_equal(105, @chanter.till)
  assert_equal(40, @will.drunkenness)
end




end
