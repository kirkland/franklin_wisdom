class Mailer < ActionMailer::Base
  default from: "from@example.com"

  def virtue(virtue_id, email_id)
    virtue = Virtue.find(virtue_id)
    email = Email.find(email_id)

    SentEmail.create(:virtue_id => virtue_id, :email_id => email_id)

    mail(:to => email.address, :subject => "This week's virtue: #{virtue.name}", :body => virtue.content)
  end
end
