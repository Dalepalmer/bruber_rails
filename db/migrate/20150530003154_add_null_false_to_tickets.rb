class AddNullFalseToTickets < ActiveRecord::Migration
  def self.up
    change_column :tickets, :repair_status,  :string, null: false
  end
end
