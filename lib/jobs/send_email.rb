module Jobs
  class SendEmail < Struct.new(:email_id, :virtue_id)
    def self.perform
      email = Email.find(email_id)
      virtue = Virtue.find(virtue_id)

      return unless email.present? && virtue.present?

      Mailer.virtue(virtue, email).deliver
    end
  end
end
