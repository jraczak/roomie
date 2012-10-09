class AddPaidToBills < ActiveRecord::Migration
  def change
    add_column :bills, :paid, :boolean
  end
end
