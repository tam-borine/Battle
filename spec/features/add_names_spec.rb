require 'spec_helper'

feature 'add_names' do
  scenario 'player 1 enters name' do
    visit "/"
    fill_in('user_name_one', with: "James")
    fill_in('user_name_two', with: "Tam")
    click_button "Save player names"
    expect(page).to have_text("Welcome to the game where James plays Tam")
  end
end
