require_relative '../../app.rb'

def sign_in_and_play
  visit "/"
  fill_in('user_name_one', with: "James")
  fill_in('user_name_two', with: "Tam")
  click_button "Save player names"
end

def game_end
  sign_in_and_play
  18.times do click_button 'Attack'
    click_link 'Next Round'
  end
end
