class Game

attr_reader :p1, :p2

  def initialize(player_1=nil, player_2=nil)
    @p1 = player_1
    @p2 = player_2
  end

  def attack(player_1, player_2)
    player_1.turn = false
    player_2.turn = true
    player_2.take_a_hit
  end

end
