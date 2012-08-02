class AddStateToDwellings < ActiveRecord::Migration
  def change
    add_column :dwellings, :state, :string
  end
end
