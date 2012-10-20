class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_guests
      t.text :description

      t.timestamps
    end
  end
end
