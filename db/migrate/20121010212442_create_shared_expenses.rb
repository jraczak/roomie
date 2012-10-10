class CreateSharedExpenses < ActiveRecord::Migration
  def change
    create_table :shared_expenses do |t|
      t.string :name
      t.boolean :stocked,        :default => true
      t.datetime :last_purchased
      t.integer :dwelling_id
      t.integer :user_id

      t.timestamps
    end
  end
end
