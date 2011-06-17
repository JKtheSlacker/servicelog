class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :number
      t.string :customer
      t.date :date_in
      t.string :in_by
      t.string :make
      t.string :model
      t.string :serial
      t.date :date_out
      t.string :out_by

      t.timestamps
    end
  end
end
