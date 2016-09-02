require 'spec_helper'

feature 'hp deduct' do
  scenario 'player 1 attacking player 2 reduces HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content("Hit points: 100")

  end
end
