class Bicycle < ActiveRecord::Base

  has_many :tickets
  belongs_to :customer

  #also photos, maybe other info?

end
