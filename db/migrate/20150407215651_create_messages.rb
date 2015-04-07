class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :ticket_id
      t.integer :sender_id
      t.integer :recipient_id
      t.string :body
    end
  end
end
