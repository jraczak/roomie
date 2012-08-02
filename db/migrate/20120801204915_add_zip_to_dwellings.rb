class AddZipToDwellings < ActiveRecord::Migration
  def change
    add_column :dwellings, :zip, :string
  end
end
