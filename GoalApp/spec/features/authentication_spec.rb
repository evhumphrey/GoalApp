require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_path
    expect(page).to have_content "New user"
  end

  feature "signing up a user" do

    scenario "shows email on user's page after signup" do
      visit new_user_path
      p new_user_path
      fill_in 'email', :with => "testing_email"
      fill_in 'password', :with => "password"
      click_on "Sign Up"
      expect(page).to have_content "testing_email"
    end
  end
end


feature "logging in" do
    scenario "shows username on the homepage after login" do

  end
end


feature "logging out" do

  scenario "begins with a logged out state" do

  end

  scenario "doesn't show username on the homepage after logout" do
  end

end
