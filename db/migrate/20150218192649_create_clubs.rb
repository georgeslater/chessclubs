class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :map_description
      t.float :latitude
      t.float :longitude
      t.string :year_founded

      t.timestamps null: false
    end
  end
end
