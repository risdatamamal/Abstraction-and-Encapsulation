class Player

  attr_accessor(:monsters)

  def initialize(monsters)
    @monsters = monsters
  end

  def put_monsters
    @monsters.each do |monster|
      puts monster
    end
  end

  # def turn_attack(player_index, opponent, opponent_index, initiative)
  #   player_monster = get_monsters()
  #   opponent_monster = opponent.get_monsters()
  #   current_player_monster = player_monster[player_index]
  #   current_opponent_monster = opponent_monster[opponent_index]
  #   current_player_monster.attack(current_opponent_monster, initiative)
  # end

  # def put_monsters
  #   index = 0
  #   @monsters.each do |monster|
  #     if index != @monsters.length() - 1
  #       print "#{@monsters[index]}", *
  #     else
  #       puts @monsters[index]
  #       puts ""
  #     end
  #     index += 1
  # end

end