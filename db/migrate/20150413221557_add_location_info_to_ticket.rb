class AddLocationInfoToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :location_notes, :string
  end
end
