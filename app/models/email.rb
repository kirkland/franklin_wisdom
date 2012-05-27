class Email < ActiveRecord::Base
  validates_format_of :address, :with => /.+@.+\..+/, :message => "Not a valid email address."
  validates_uniqueness_of :address, :message => "You're already signed up!"

  has_many :sent_emails

  # TODO: Make a column to mark someone as unsubscribed.
  scope :active, where('created_at IS NOT NULL')
end
