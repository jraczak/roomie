class CreateDwellingRoomieRelationships < ActiveRecord::Migration
  def change
    create_table :dwelling_roomie_relationships do |t|

      t.timestamps
    end
  end
end
