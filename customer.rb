class Customer

  attr_reader :name, :wallet, :age

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
end

def buy_a_drink(pub, type_of_drink)
  cost_of_drink = type_of_drink.price
  if @age >= 18
    @wallet -= cost_of_drink
    pub.add_money(cost_of_drink)
  end
end

end
