class Customer

  attr_reader :name, :wallet, :age, :drunkenness

def initialize(name, wallet, age, drunkenness)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end

def buy_a_drink(pub, type_of_drink)
  cost_of_drink = type_of_drink.price
  if @age >= 18 && @drunkenness < 80
    @wallet -= cost_of_drink
    pub.add_money(cost_of_drink)
    @drunkenness += type_of_drink.alcohol_level
  end
end

end
