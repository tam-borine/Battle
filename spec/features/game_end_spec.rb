require 'spec_helper'

feature 'game ends' do

  scenario 'player Tam wins' do
    allow(Kernel).to receive(:rand).and_return(10)
    game_end
    click_button 'Attack'
    expect(page).to have_content("Game Over! Tam won!")
  end
end
