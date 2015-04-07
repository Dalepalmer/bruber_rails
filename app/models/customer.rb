class Customer < ActiveRecord::Base

  has_many :bicycles
  has_many :tickets

  #also: email, cell phone, payment info, encrytpion stuff, possibly avatar stuff?


end
