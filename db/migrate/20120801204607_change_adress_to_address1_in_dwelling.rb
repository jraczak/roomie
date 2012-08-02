class ChangeAdressToAddress1InDwelling < ActiveRecord::Migration
  def self.up
    rename_column :dwellings, :address, :street_address
  end

  def self.down
    rename_column :dwellings, :address, :street_address
  end
end
