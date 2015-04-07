class Customer < ActiveRecord::Base

  has_many :bicycles
  has_many :tickets

  #also: username, email, cell phone, payment info, encrytpion stuff, possibly avatar stuff?


end
