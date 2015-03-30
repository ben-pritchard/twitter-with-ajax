require 'rails_helper'

describe "the user authentication process" do
  it "signs the user up" do
    visit root_path
    click_on "Sign up"
    fill_in 'Email', :with => "derp@derp.com"
    fill_in 'Password', :with => "derpderp"
    fill_in 'Password confirmation', :with => "derpderp"
    click_button "Sign up"
    expect(page).to have_content "successfully"
  end

  it "signs the user in" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    expect(page).to have_content "successfully"
  end

  it "signs the user out" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "Sign out"
    expect(page).to have_content "successfully"
  end
end
