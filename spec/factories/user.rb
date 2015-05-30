FactoryGirl.define do
  factory :user do
    email { "test@test.com" }
    phone { "555-555-5555" }
    password { "password" }
    password_confirmation { password }
  end
end

#
# User.new({
#   :uid => "chuck",
#   :provider => "chuck",
#   :name => "Charles Testington",
#   :email => "test@test.com",
#   :phone => "+15202471239",
#   :password => "password",
#   :encrypted_password => "password",
#   :type => "Customer"
# })
