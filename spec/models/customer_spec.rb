require 'rails_helper'

describe Customer do

  it { should have_many :bicycles }
  it { should have_many :tickets }

  it { should have_many(:messages).through(:tickets) }

end
