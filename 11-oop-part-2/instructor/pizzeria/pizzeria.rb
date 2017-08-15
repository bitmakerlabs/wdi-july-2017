
require_relative('pizza')

class Pizzeria

  @@num_pizzas_ordered = 0
  @@company_name = "Super Pizza"
  @@pizzerias = {}

  def self.company_name
    return "in self.company_name"
  end

  def self.compare_pizzas_ordered
    return @@pizzerias
  end

  def initialize(owner_name)
    @ordered_pizzas = []
    @owner_name = owner_name

    @@pizzerias[owner_name] = 0
  end

  def store_name
    return "#{@owner_name}'s #{@@company_name}"
  end

  def order
    new_pizza = Pizza.new
    @ordered_pizzas << new_pizza
    @@num_pizzas_ordered += 1
    @@pizzerias[@owner_name] += 1

    new_pizza.bake
    4.times do
      new_pizza.cut
    end

    puts "Congrats, this is our #{@@num_pizzas_ordered} pizza ordered."

    return new_pizza
  end
end

jordans_store = Pizzeria.new('Jordan')
# puts jordans_store.inspect

# puts jordans_store.store_name

# aprils_store = Pizzeria.new('April')
# puts aprils_store.inspect

# puts aprils_store.store_name

# puts Pizzeria.company_name
# jordans_store.company_name # this errors!
# Pizzeria.order # this errors!
# puts Pizzeria.compare_pizzas_ordered

pizza1 = jordans_store.order
puts pizza1.inspect

pizza1.eat
# puts pizza1.inspect
8.times do
  puts pizza1.inspect
  pizza1.eat
end
# jordans_store.order
# jordans_store.order
#
# aprils_store.order
# aprils_store.order

# puts Pizzeria.compare_pizzas_ordered
