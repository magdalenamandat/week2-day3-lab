require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test
def setup
  @Will = Customer.new("Will", 100)
end

def test_customer_name
  assert_equal("Will", @Will.name)
end
end
