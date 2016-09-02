def sign_in_and_play
  visit "/"
  fill_in('user_name_one', with: "James")
  fill_in('user_name_two', with: "Tam")
  click_button "Save player names"
end

def game_end
  sign_in_and_play
  11.times do $game.attack
  end
end
