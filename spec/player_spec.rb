require 'spec_helper'
require_relative '../lib/player'

describe Player do
  it 'has a name' do
    player = Player.new('Tam')
    expect(player.name).to eq 'Tam'
  end
end
