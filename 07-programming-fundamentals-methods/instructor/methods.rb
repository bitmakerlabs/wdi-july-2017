# first_number = 10
# second_number = 20
#
# result = first_number + second_number
#
# third_number = 30
# fourth_number = 40
#
# new_result = third_number + fourth_number

def sum(first_number, second_number)
  return first_result = first_number * second_number
  puts second_result = first_number / second_number

  puts first_number + second_number
end

result = sum(99, 1)

# puts "result = #{result}"
# puts first_number
# puts second_number

# Return life level with bonus (if applicable)
def give_bonus_life(current_life_level)
  if current_life_level < 50
    return current_life_level
  elsif current_life_level > 100
    new_life_level = current_life_level * 1.3
  else
    new_life_level = current_life_level * 1.1
  end
end

player_one_life = give_bonus_life(30)
player_two_life = give_bonus_life(150)

puts "Player One: #{player_one_life}"
puts "Player Two: #{player_two_life}"
