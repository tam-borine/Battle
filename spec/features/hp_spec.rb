require 'spec_helper'
require_relative '../../app'

feature 'displays hitpoints' do
  scenario 'player 1 looks at HP of player 2' do
    visit "/"
    fill_in('user_name_one', with: "James")
    fill_in('user_name_two', with: "Tam")
    click_button "Save player names"

    expect(page).to have_content("Tam's Hit points: 100")
  end
end
