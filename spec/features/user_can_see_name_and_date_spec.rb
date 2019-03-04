require 'rails_helper'
require 'login_helper'

RSpec.feature "User details display", type: :feature do
    scenario "Can see user name and date information alongside each post" do
      login_percy_onepost
      expect(page).to have_content('Logged in')
      click_link("New post")
      expect(page).to have_content('Message')
      fill_in "post_message", with: "test feature message"
      click_on "Submit"
      expect(page).to have_content("test feature message")
      expect(page).to have_content("Percy Onepost")
      expect(page.body).to match(/#{TIMESTAMP_REGEX}/)
    end
end
