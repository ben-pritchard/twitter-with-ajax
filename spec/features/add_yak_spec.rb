require 'rails_helper'

describe "the add a yak process" do
  let(:user) {FactoryGirl.create(:user)}
  before do
    sign_in(user)
  end

  it "adds a yak", js: true do
    visit root_path
    fill_in "Body", with: "Yik yak. Ride the yak."
    page.should have_content("Yik")
  end
end
