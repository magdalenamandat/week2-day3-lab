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

  def check_total_stock_value
    stock_value = 0
    for drink in @drinks
      stock_value += drink.price
    end
    return stock_value
  end



end
