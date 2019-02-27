require 'rails_helper'

RSpec.feature "Journey", type: :feature do
  scenario "can sign up, post, see his post, log out, log in, see his previous post" do
    visit '/'
    click_link("Sign up", match: :first)
    fill_in "user_email", with: "featuretest@email.com"
    fill_in "user_first_name", with: 'feature'
    fill_in "user_last_name", with: 'test'
    fill_in "user_password", with: "featurepwd"
    fill_in 'user_password_confirmation', with: "featurepwd"
    click_on "Submit"
    expect(page).to have_content('Logged in')
  end
end
