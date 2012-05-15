class Mailer < ActionMailer::Base
  default from: "from@example.com"

  # TODO: Iterate over this in a job that is passed a list of emails.
  def virtue(virtue, email)
    mail(:to => email.address, :subject => "This week's virtue: #{virtue.name}", :body => virtue.content)
  end
end
