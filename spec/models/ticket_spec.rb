require 'rails_helper'

describe Ticket do
  it { should belong_to :bicycle }
  it { should belong_to :mechanic }
  it { should belong_to :problem }
  it { should belong_to :customer }
end
