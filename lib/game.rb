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

  def loser
    @players.select do
      |player| player.hp == 0
    end.first
  end

  def winner
    @players.select do
      |player| player.hp != 0
    end.first
  end

  def game_over?
    @p1.hp == 0 || @p2.hp == 0
  end

end
