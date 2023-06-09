class CreatePlacepics < ActiveRecord::Migration[7.0]
  def change
    create_table :placepics do |t|
      t.string :pic
      t.string :title

      t.timestamps
    end
  end
end
