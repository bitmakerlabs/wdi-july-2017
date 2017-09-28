# Basics

# Write a method that takes someone's order
def take_order(name)
  "Order for #{name} was taken"
end

# Call the method
# puts take_order # => "Order for Mina was taken"

# Question:
# Can I assign it to a variable as a method? Why would I want to do this?

def slow_method
  puts "Starting slow process..."
  sleep 5
  puts "Done."
end

slow_method


new_array = [1, 2, 3, 4, 5]

times_five = new_array.map do |number|
  number * 5
end

puts times_five
