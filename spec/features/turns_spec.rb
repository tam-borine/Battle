require 'spec_helper'
require_relative '../../app'

feature 'switch turns' do
  scenario 'player 2 attacks first round and player 1 second' do
    sign_in_and_play #player 1 is James and plyaer 2 is Tam
    click_button 'Attack' #player 2 attacks
    click_link 'Next Round' #switch turns
    expect(page).to have_content "Welcome to the game. It is James's turn"
  end
end
