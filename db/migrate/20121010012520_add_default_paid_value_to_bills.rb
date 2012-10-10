class AddDefaultPaidValueToBills < ActiveRecord::Migration
  def change
    change_column :bills, :paid, :boolean, default: false
  end
end
