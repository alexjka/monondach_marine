class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :boat_year, null: false
      t.string :boat_make, null: false
      t.string :boat_model, null: false
      t.string :engine_year, null: false
      t.string :engine_make, null: false
      t.string :engine_model, null: false
      t.string :engine_hours, null: false
      t.string :length, null: false
      t.string :photo, null: false
      t.string :video, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
