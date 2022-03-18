require_relative 'monster'
require_relative 'player'

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

# phpkachu.attack(cppmander)
# puts ''

# list_monster = [phpkachu, sqlrtle, cppmander, bashtoise, torterraform]

# list_monster.each do |monster|
#   puts "#{monster}"
#   puts ''
# end

# Instantiate the objects of the class that model your players here

# Add monsters to your players here
# Player 1 should have phpkachu, cppmander, and torterraform #

monsters_p1 = [phpkachu.clone, cppmander.clone, torterraform.clone]

list_monsters_p1 = "#{phpkachu.clone}, #{cppmander.clone}, #{torterraform.clone}"

# Player 2 should have sqlrtle, cppmander, and bashtoise #

monsters_p2 = [sqlrtle.clone, cppmander.clone, bashtoise.clone]

list_monsters_p2 = "#{sqlrtle.clone}, #{cppmander.clone}, #{bashtoise.clone}"

# Print the current stats of each players here #

puts "Player 1:"
puts list_monsters_p1
puts ''

puts "Player 2:"
puts list_monsters_p2
puts ''

puts '=======================Turn 1======================='
puts ''

# Make your Player 1's phpkachu attacks Player 2's cppmander here

monsters_p1[0].attack(monsters_p2[1])
puts ''

# Print the current stats of each players here

puts "Player 1:"
monsters_p1.each do |list_monsters_p1|
  puts list_monsters_p1
end
puts ''

puts "Player 2:"
monsters_p2.each do |list_monsters_p2|
  puts list_monsters_p2
end
puts ''

# Make your Player 2's bashtoise attacks Player 1's cppmander here
monsters_p2[0].attack(monsters_p1[1])
puts ''

# Print the current stats of each players here
puts "Player 1:"
monsters_p1.each do |list_monsters_p1|
  puts list_monsters_p1
end
puts ''

puts "Player 2:"
monsters_p2.each do |list_monsters_p2|
  puts list_monsters_p2
end
puts ''