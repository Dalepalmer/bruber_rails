require 'rails_helper'

describe Mechanic do
  it { should have_many :tickets }
  # it { should validate_presence_of :name }
  # it { should validate_presence_of :email }
  # it { should validate_confirmation_of :password }
  # it { should validate_presence_of :phone }
  # it { should validate_presence_of :payment }
end
