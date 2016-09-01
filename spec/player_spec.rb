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

  describe '#take_a_hit' do
    it 'reduces the players hit points by 10' do
      expect{player_2.take_a_hit}.to change {player_2.hp}.by(-10)
    end
  end


end
