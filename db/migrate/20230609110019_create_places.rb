class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :lat
      t.string :lon
      t.string :title

      t.timestamps
    end
  end
end
