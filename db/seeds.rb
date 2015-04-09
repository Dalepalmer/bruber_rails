User.create({
  :uid => "bruber",
  :provider => "bruber",
  :name => "BRUBER_AUTO_MESSAGE",
  :email => "mcgruber@bruber.com",
  :phone => "5412311102",
  :password => "password",
  :encrypted_password => "password",
  :type => "Mechanic"
  })

User.create({
  :uid => "dale",
  :provider => "dale",
  :name => "Dale Palmer",
  :email => "dap38@zips.uakron.edu",
  :phone => "3308191550",
  :password => "password",
  :encrypted_password => "password",
  :type => "Customer"
})

User.create({
  :uid => "tyler",
  :provider => "tyler",
  :name => "Tyler Brown",
  :email => "tylerjbrown192@gmail.com",
  :phone => "5035771899",
  :password => "password",
  :encrypted_password => "password",
  :type => "Mechanic"
})

Bicycle.create({
  :description => "1950 Surley Cross Check",
  :customer_id => 2
  })

Problem.create({
  :description => "Flat front tire",
  :estimate => "20"
  })

Problem.create({
  :description => "Flat back tire",
  :estimate => "25"
  })

Problem.create({
  :description => "Broken Chain",
  :estimate => "35"
  })

Ticket.create({
  :repair_status => "Posted",
  :problem_id => 1
  })

Ticket.create({
  :repair_status => "Posted",
  :problem_id => 2
  })

Ticket.create({
  :repair_status => "Posted",
  :problem_id => 3
  })
