class Player

attr_reader :name, :hp
attr_writer :turn

  def initialize (name)
    @name = name
    @hp =  100
    @turn = true
  end

  def take_a_hit
    @hp -= rand(1..50)
  end


end
