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

  scenario "I can not destroy a post that is not mine" do
    visit '/'
    fill_in "user_email", with: "Percy.Onepost@gmail.com"
    fill_in "user_password", with: "po1234"
    click_on "Log in"
    expect(page.html).to include("A medium length post of a single sentence of an average length. Number 7")
    click_link("Destroy", match: :first)
    expect(page.html).to include("A medium length post of a single sentence of an average length. Number 7")
  end

  scenario "It can destroy a post with likes, destroying the likes" do
    visit '/'
    fill_in "user_email", with: "george.manyposts@gmail.com"
    fill_in "user_password", with: 'gm1234'
    click_on "Log in"
    expect(page).to have_content("This post will be deleted")
    click_on("Like", match: :first)
    expect(page).to have_content("1 Like")
    click_link("Destroy", match: :first)
    expect(page).not_to have_content("This post will be deleted")
  end

end
