class Player

attr_reader :name, :hp

  def initialize (name)
    @name = name
    @hp =  100
  end

  def attack(player)
    player.take_a_hit
  end

  def take_a_hit
    @hp -= 10
  end



end
