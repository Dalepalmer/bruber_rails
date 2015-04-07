class Customer < ActiveRecord::Base

  has_many :bicycles
  has_many :tickets

  has_many :messages, :through => :tickets


  #also: email, cell phone, payment info, encrytpion stuff, possibly avatar stuff?


end
