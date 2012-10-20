class ChangeDatesToDatetime < ActiveRecord::Migration
  def change
    change_column :visits, :start_date, :datetime
    change_column :visits, :end_date, :datetime
  end

  def down
  end
end
