require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    expect(page).to have_css '.todos li', text: "Buy milk"
  end
end
