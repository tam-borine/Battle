class Game

attr_reader :p1, :p2, :turn

  def initialize(player_1=nil, player_2=nil)
    @p1 = player_1
    @p2 = player_2
    @players = [@p1, @p2]
    @turn = @p1
  end

  def attack
    enemy_of(@turn).take_a_hit
  end

  def switch_turns
    @turn = enemy_of(@turn)
  end

  def enemy_of(the_player)
    @players.select do
      |player| player != the_player
    end.first
  end

end
