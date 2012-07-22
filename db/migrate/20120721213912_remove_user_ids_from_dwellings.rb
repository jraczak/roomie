class RemoveUserIdsFromDwellings < ActiveRecord::Migration
  def up
    remove_column :dwellings, :user_ids
  end

  def down
    remove_column :dwellings, :user_ids
  end
end
