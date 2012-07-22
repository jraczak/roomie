class AddDwellingIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dwelling_id, :integer
  end
end
