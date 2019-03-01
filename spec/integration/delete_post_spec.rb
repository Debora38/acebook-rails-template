require 'rails_helper'

RSpec.feature "Delete a post", type: :feature do
  scenario "A user can delete a post" do
    visit '/'
    fill_in "user_email", with: "george.manyposts@gmail.com"
    fill_in "user_password", with: 'gm1234'
    click_on "Log in"
    expect(page.html).to include("This post will be deleted")
    click_link("Destroy", match: :first)
    expect(page.html).not_to include("This post will be deleted")
  end
end
