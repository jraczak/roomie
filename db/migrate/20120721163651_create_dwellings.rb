class CreateDwellings < ActiveRecord::Migration
  def change
    create_table :dwellings do |t|
      t.string :address
      t.string :nickname
      t.integer :user_ids

      t.timestamps
    end
  end
end
