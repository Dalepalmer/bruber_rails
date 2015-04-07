class Mechanic < ActiveRecord::Base

  has_many :tickets

  #also: name, email, cell number, payment info, encryption stuff 
end
