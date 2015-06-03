require "rails_helper"

describe "the add a user process" do
  it "adds a new user" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Email", with: user.email
    fill_in "Phone", with: user.phone
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Welcome'
  end

  it "displays errors when leaving password blank" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Email", with: user.email
    fill_in "Phone", with: user.phone
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Password can\'t be blank'
  end

  it "displays errors when leaving password_confirmation blank" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Email", with: user.email
    fill_in "Phone", with: user.phone
    fill_in "Password", with: user.password
    click_on "Sign up"
    expect(page).to have_content 'Password confirmation can\'t be blank'
  end

  it "displays errors when leaving email blank" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Phone", with: user.phone
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Email can\'t be blank'
  end

  it "displays errors when leaving phone blank" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Phone can\'t be blank'
  end
end
