class Game

  def initialize(player_1=nil, player_2=nil)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.take_a_hit
  end

end
