require 'spec_helper'

feature 'hp deduct' do
  scenario 'player 1 attacks player 2 and deduct HP by 10' do
    sign_in_and_play

    expect{ click_link 'Attack' }.to change{ $game.p2.hp }.by(-10)
  end
end
