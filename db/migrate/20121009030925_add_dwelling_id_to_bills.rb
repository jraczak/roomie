class AddDwellingIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :dwelling_id, :integer
  end
end
