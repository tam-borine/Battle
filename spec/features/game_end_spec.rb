require 'spec_helper'

feature 'game ends' do

  scenario 'player Tam has 0 hp' do

  end

  scenario 'player Tam wins' do
    game_end
    click_button 'Attack'
    expect(page).to have_content("Game Over! Tam won!")
  end
end
