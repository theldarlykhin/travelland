class Home < MailForm::Base
  
  attribute :name
  attribute :email
  attribute :subject
  attribute :message
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "sent from our website",
      :to => "travellandmyanmar@gmail.com",
      :from => %("#{name}")
    }

  end





  
end
