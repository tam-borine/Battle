require 'game'
require 'spec_helper'

describe Game do

  subject(:game) {Game.new(player_1, player_2)}
  let (:player_1) {double :player, :turn => true}
  let (:player_2) {double :player, :turn => true}

  xdescribe '#attack' do
    it 'attacks the player and damages them' do
      expect(player_2).to receive(:take_a_hit)
      game.attack(player_1, player_2)
    end
  end

end
