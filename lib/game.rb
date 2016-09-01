class Game

attr_reader :p1, :p2

  def initialize(player_1=nil, player_2=nil)
    @p1 = player_1
    @p2 = player_2
  end

  def attack(player)
    player.take_a_hit
  end

end
