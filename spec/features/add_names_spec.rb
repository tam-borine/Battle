require 'spec_helper'

feature 'add_names' do
  scenario 'player 1 enters name' do
    sign_in_and_play
    expect(page).to have_content("James")
  end
end
