require 'game'
require 'spec_helper'

describe Game do

  subject(:game) {Game.new(player_1, player_2)}
  let (:player_1) {double :player}
  let (:player_2) {double :player}

  describe '#attack' do
    it 'attacks the player and damages them' do
      expect(player_2).to receive(:take_a_hit)
      game.attack
    end
  end

end
