class AddOwnerIdToDwellings < ActiveRecord::Migration
  def change
    add_column :dwellings, :owner_id, :integer
  end
end
