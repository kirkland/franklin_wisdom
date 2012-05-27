class CreateSentEmails < ActiveRecord::Migration
  def change
    create_table :sent_emails do |t|
      t.integer :virtue_id
      t.integer :email_id

      t.timestamps
    end
  end
end
