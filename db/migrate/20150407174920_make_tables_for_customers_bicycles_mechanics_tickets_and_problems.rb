class MakeTablesForCustomersBicyclesMechanicsTicketsAndProblems < ActiveRecord::Migration
  def change
    # create_table :customers do |t|
    #   t.string :email
    #   t.string :cell
    # end
    #
    # create_table :mechanics do |t|
    #   t.string :email
    #   t.string :cell
    # end

    create_table :bicycles do |t|
      t.string :description
      t.integer :customer_id
    end

    create_table :tickets do |t|
      t.integer :customer_id
      t.integer :bicycle_id
      t.integer :mechanic_id
      t.integer :problem_id
      t.string :repair_status
    end

    create_table :problems do |t|
      t.string :description
      t.integer :estimate
    end
  end
end
