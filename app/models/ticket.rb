class Ticket < ActiveRecord::Base
  belongs_to :customer
  belongs_to :bicycle
  belongs_to :mechanic
  belongs_to :problem
  has_many :messages

  validates :repair_status, :presence => true

  after_create :generate_created_message
  before_update :generate_update_message  #note:before_update is deprecated!

  def generate_created_message
    message = Message.create({
      :ticket_id => id,
      :body => "Your ticket number #{id} has been created; once a mechanic picks it, you will get another message!",
      :subject => "Your ticket number #{id} has been successfully created!",
      :recipient_id => customer_id,
      :sender_id => 1
      })
    message.send_sms
    message.send_email
  end

  def generate_update_message
    @mechanic_name = Mechanic.find(mechanic_id).name || "ERROR-MECHANICNAME FAIL"
    @customer_name = Customer.find(customer_id).name || "ERROR-CUSTOMERNAME FAIL"
    if repair_status_changed? && repair_status == "Claimed"
      body = "Huzzah! Your ticket number #{id} has been claimed! Mechanic #{@mechanic_name} is on the case!"
      subject = "Huzzah! Your ticket number #{id} has been claimed!"
      recipient_id = customer_id
    elsif repair_status_changed? && repair_status == "Closed"
      body = "Huzzah! Your ticket number #{id} has been closed! #{@mechanic_name} has fixed yo' bike!"
      subject = "Huzzah! Bike is fixed!"
      recipient_id = customer_id
    # elsif repair_status_changed? && repair_status == "Rated"
    #   body = "Huzzah! You have been rated xxxx stars"
    #   subject = "Huzzah! Rating has occured!"
    #   recipient_id = mechanic_id
    else
      puts "Ain't nothing changed, fool"
      return true
    end

    message = Message.create({
      :ticket_id => id,
      :sender_id => 1,
      :body => body,
      :subject => subject,
      :recipient_id => recipient_id
    })

    message.send_sms
    message.send_email
  end


end
