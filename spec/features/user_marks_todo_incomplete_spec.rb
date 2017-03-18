require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo("Buy milk")
    click_on "Mark complete"
    click_on "Mark incomplete"
    expect(page).to_not display_completed_todo "Buy milk"
    expect(page).to display_todo "Buy milk"
  end
end
