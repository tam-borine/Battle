require 'spec_helper'
require_relative '../lib/player'

describe Player do

  subject(:player_1) { Player.new("James") }
  subject(:player_2) { Player.new("Tam") }

  describe '#name' do

    it 'has a name' do
      expect(player_2.name).to eq 'Tam'
    end
  end

  describe '#attack' do
    it 'attacks the player and damages them' do
      expect(player_2).to receive(:take_a_hit)
      player_1.attack(player_2)
    end
  end



end
