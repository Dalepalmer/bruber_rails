class Mechanic < User

  has_many :tickets

  has_many :messages, :through => :tickets

  #also: name, email, cell number, payment info, encryption stuff

  def calculate_aggregate_rating
    all_tickets = self.tickets
    ticket_count = all_tickets.length
    sum = 0
    all_tickets.each do |ticket|
      sum += ticket.rating
    end
    rating = sum/ticket_count
  end
end
