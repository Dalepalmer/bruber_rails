class Mechanic < ActiveRecord::Base

  has_many :tickets

  has_many :messages, :through => :tickets

  #also: name, email, cell number, payment info, encryption stuff
end
