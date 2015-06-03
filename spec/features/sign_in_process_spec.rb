require "rails_helper"

describe "The Sign In Process" do
    before(:each) do
        user = FactoryGirl.create(:user)
        sign_in(user)
    end

    it "Allows a user to sign in." do
        expect(page).to have_content "Signed in"
    end
end
