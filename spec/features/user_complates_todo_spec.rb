require 'rails_helper'

feature "User complates todo" do
  scenario "successfully" do
    sign_in
    create_todo "Buy milk"
    click_on "Mark complate"
    expect(page).to display_completed_todo("Buy milk") 
  end
end
