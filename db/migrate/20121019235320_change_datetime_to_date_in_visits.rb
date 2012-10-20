class ChangeDatetimeToDateInVisits < ActiveRecord::Migration
  def change
    change_column :visits, :start_date, :date
    change_column :visits, :end_date, :date
  end

  def down
  end
end
