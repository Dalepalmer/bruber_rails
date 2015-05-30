require 'rails_helper'

describe Bicycle do
  it { should belong_to :customer }
  it { should have_many :tickets }
end
