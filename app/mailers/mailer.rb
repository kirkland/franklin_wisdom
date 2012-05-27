class Mailer < ActionMailer::Base
  default from: "from@example.com"

  def virtue(virtue, email)
    SentEmail.create(:virtue_id => virtue.id, :email_id => email.id)

    mail(:to => email.address, :subject => "This week's virtue: #{virtue.name}", :body => virtue.content)
  end
end
