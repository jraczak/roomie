class AddCityToDwellings < ActiveRecord::Migration
  def change
    add_column :dwellings, :city, :string
  end
end
