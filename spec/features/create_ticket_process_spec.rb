require "rails_helper"

describe "The Create Repair Ticket Process" do
    before(:each) do
        @user = FactoryGirl.create(:user)
        visit "/"
        click_on "Sign In"
        fill_in "Email", with: @user.email
        fill_in "Password", with: @user.password
        click_on "Log in"
    end

    it "Allows a user to create a new ticket." do
        expect(page).to have_content "Signed in"
    end

end
