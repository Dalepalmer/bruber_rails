class Ticket < ActiveRecord::Base
  belongs_to :customer
  belongs_to :bicycle
  belongs_to :mechanic
  belongs_to :problem
  has_many :messages

  validates :repair_status, :presence => true

  after_create :create_created_message
  after_update :create_update_message

  def generate_created_message
    message = Message.create({
      :ticket_id => id,
      :body => "Your ticket has been created; when a mechanic picks it, you will get another message!",
      :subject => "Your ticket number #{id} has been successfully created!",
      :recipient_id => customer_id,
      :sender_id => 1
      })
    message.send_sms
    message.send_email
  end

  def generate_update_message

  end


end
