class Ticket < ActiveRecord::Base
  belongs_to :customer
  belongs_to :bicycle
  belongs_to :mechanic
  belongs_to :problem

  validates :repair_status, :presence => true

end
