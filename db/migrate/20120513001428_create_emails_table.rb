class CreateEmailsTable < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :address, :null => false, :unique => true
    end
  end
end
