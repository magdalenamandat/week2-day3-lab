class Pub

attr_reader :name, :till, :drinks, :food

  def initialize(name, till, drinks, food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
  end

  def drinks_count()
    return @drinks.length
  end

  def add_money(amount)
    @till += amount
  end
end
