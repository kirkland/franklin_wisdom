module Jobs
  class SendEmail
    def self.perform(email_id, virtue_id)
      email = Email.find(email_id)
      virtue = Virtue.find(virtue_id)

      return unless email.present? && virtue.present?

      # Be careful to avoid sending someone too many emails.
      if email.sent_emails.where('created_at > ?', Time.now - 6.days).present?
        raise "Tried to send another email too soon to email: #{email_id}, virtue: #{virtue_id}."
      end

      Mailer.virtue(virtue_id, email_id).deliver
    end
  end
end
