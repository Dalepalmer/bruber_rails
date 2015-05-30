require 'rails_helper'

describe Problem do
  it { should have_many :tickets }
end
