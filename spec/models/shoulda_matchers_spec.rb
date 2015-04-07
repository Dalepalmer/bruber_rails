require 'rails_helper'

describe Customer do
  it { should have_many :bicycles }
  it { should have_many :tickets }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_confirmation_of :password }
  it { should validate_presence_of :cell }
  it { should validate_presence_of :payment }
end

describe Bicycle do
  it { should belong_to :customer }
  it { should have_many :tickets }
end

describe Mechanic do
  it { should have_many :tickets }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_confirmation_of :password }
  it { should validate_presence_of :cell }
  it { should validate_presence_of :payment }
end

describe Ticket do
  it { should belong_to :bicycle }
  it { should belong_to :mechanic }
  it { should belong_to :problem }
  it { should belong_to :customer }
  it { should validate_presence_of :status }
end

describe Problem do
  it { should have_many :tickets }
end
