class Addcolumnstobicycles < ActiveRecord::Migration
  def change
    add_column :bicycles, :make, :string
    add_column :bicycles, :model, :string
    add_column :bicycles, :year, :string
  end
end
