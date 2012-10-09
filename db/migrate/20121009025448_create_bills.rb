class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :provider
      t.float :total_due
      t.date :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
