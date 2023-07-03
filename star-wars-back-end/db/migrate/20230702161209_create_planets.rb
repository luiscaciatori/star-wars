class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :diameter
      t.string :rotation_period
      t.string :orbital_period
      t.string :gravity
      t.string :population
      t.string :climate
      t.string :terrain
      t.string :surface_water

      t.timestamps
    end

    create_table :films_planets, id: false do |t|
      t.belongs_to :film
      t.belongs_to :planet
    end
  end
end
