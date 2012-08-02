class AddUserIdToDwellings < ActiveRecord::Migration
  def change
    add_column :dwellings, :user_id, :integer
  end
end
