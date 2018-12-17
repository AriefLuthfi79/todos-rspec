require 'rails_helper'

feature "User sees own todos" do
  scenario "doesn't see others todos" do
    Todo.create!(title: "Buy milk", email: "foo@bar.com")
    sign_in_as "someone_foo@bar.com"
    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
