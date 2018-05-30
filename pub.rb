class Pub

attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  # def get_name()
  #   return @name
  # end

  def drinks_count()
    return @drinks.length
  end

  # def check_till()
  #   return @till
  # end
  def add_money(amount)
    @till += amount
  end


end
