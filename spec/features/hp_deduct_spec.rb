require 'spec_helper'

feature 'hp deduct' do
  scenario 'player 1 attacks player 2 and deduct HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Hit points: 90")

  end
end
