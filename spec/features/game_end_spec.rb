require 'spec_helper'

feature 'game ends' do
  scenario 'player hit points reduced to 0 and game ends' do
    game_end
    expect(page).to have_content("Game Over!  James won!")
  end
end
