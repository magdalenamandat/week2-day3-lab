class Pub

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def get_name()
  return @name
end

def drinks_count()
  return @drinks.length
end

end
