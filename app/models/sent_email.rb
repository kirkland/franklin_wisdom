class SentEmail < ActiveRecord::Base
  belongs_to :virtue
  belongs_to :email
end
