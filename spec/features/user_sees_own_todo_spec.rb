require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see other's todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
