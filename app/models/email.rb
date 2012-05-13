class Email < ActiveRecord::Base
  validates_format_of :address, :with => /.+@.+\..+/, :message => "Not a valid email address."
  validates_uniqueness_of :address, :message => "You're already signed up!"
end
