class Message < ActiveRecord::Base

  belongs_to :ticket
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'

  def send_sms
    RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => subject,
                    :To => recipient.phone,
                    :From => ENV['USER_NUMBER']
                  }
      ).execute
  end


  def send_email
    RestClient::Request.new(
      :method => :post,
      :url => "https://api:#{ENV['MAILGUN_ACCOUNT_KEY']}@api.mailgun.net/v3/#{ENV['MAILGUN_ACCOUNT_DOMAIN']}/messages",
      :payload => {
        :from => "Bruber <postmaster@#{ENV['MAILGUN_ACCOUNT_DOMAIN']}>",
        :to => recipient.email,
        :subject => subject,
        :text => body
      }
      ).execute
  end

  # def customer
  #   ticket.customer
  # end
  #
  # def mechanic
  #   ticket.mechanic
  # end
end
