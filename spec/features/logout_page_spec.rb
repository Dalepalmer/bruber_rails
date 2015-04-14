require "rails_helper"

describe "the sign out a user process" do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it "signs out a user" do
    visit "/"
    click_on "Sign Out"
    expect(page).to have_content "Signed out"
  end
  it "confirms a user has logged out" do
    visit "/"
    click_on "Sign Out"
    click_on "Customer"
    expect(page). to have_content "Log in"
  end
end
