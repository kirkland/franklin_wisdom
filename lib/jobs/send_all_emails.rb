module Jobs
  class SendAllEmails
    def self.perform(virtue_id)
      virtue = Virtue.find(virtue_id)

      Email.active.each do |email|
        Resque.enqueue(Jobs::SendEmail, email.id, virtue_id)
      end
    end
  end
end
