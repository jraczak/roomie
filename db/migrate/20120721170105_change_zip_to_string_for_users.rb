class ChangeZipToStringForUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :zip, :string
    end
  end

  def down
    change_table :users do |t|
      t.change :zip, :string
    end
  end
end
