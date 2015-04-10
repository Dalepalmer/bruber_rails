namespace :planb do
  task :create_ticket => :environment do
    Ticket.create({
      :repair_status => 'Posted',
      :location => '208 SW 5th Ave',
      :bicycle_id => 1,
      :problem_id => 1,
      :customer_id => 2
      })
  end

  task :claim_ticket => :environment do
    ticket = Ticket.find_by customer_id: 2
    ticket.mechanic_id = 3
    ticket.repair_status = 'Claimed'
    ticket.save
  end

  task :close_ticket => :environment do
    ticket = Ticket.find_by customer_id: 2
    ticket.repair_status = 'Completed'
    ticket.save
  end
end
