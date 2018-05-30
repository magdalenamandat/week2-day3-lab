require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

def setup
  @Chanter = Pub.new("Chanter", 100, [])
end

def test_get_pub_name
  assert_equal("Chanter", @Chanter.get_name)
end

def test_number_of_drinks
  assert_equal(0, @Chanter.drinks_count())
end

end
