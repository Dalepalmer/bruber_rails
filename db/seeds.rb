User.create({
  :uid => "chuck",
  :provider => "chuck",
  :name => "Charles Testington",
  :email => "test@test.com",
  :phone => "+15202471239",
  :password => "password",
  :encrypted_password => "password",
  :type => "Customer"
})

User.create({
  :uid => "mike",
  :provider => "mike",
  :name => "Mike Mechanicson",
  :email => "test@test.com",
  :phone => "+15202471239",
  :password => "password",
  :encrypted_password => "password",
  :type => "Mechanic"
})

Bicycle.create({
  :description => "1993 Testington 5000",
  :customer_id => 1
  })

Ticket.create({
  :repair_status => "Mechanic en route",
  :customer_id => 1,
  :mechanic_id => 2
  })
