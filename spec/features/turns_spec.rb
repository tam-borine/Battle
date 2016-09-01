require 'spec_helper'
require_relative '../../app'

feature 'switch turns' do
  scenario 'player 1 attacks first round and player 2 second' do
    sign_in_and_play
    expect{ click_link 'Attack' }.to change{ $game.p2.hp }.by(-10)
    click_link 'Next Round'
    expect{ click_link 'Attack' }.to change{ $game.p1.hp }.by(-10)
  end
end
