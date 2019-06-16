feature "Computer Choice" do
  scenario "Choose rock, paper or scissors" do
    sign_in_and_play

    select("Rock", from: "player_choice")
    click_button "Submit"
    expect(page).to have_content "Computer: Scissors"
  end
end