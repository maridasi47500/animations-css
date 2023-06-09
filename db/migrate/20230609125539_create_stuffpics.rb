class CreateStuffpics < ActiveRecord::Migration[7.0]
  def change
    create_table :stuffpics do |t|
      t.string :pic
      t.string :title

      t.timestamps
    end
  end
end
