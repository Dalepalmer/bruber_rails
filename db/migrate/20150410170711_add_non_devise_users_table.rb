class AddNonDeviseUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.string :encrypted_password
      t.string :type
    end
  end
end
