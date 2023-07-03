class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :birth_year
      t.string :eye_color
      t.string :gender
      t.string :hair_color
      t.string :height
      t.string :mass
      t.string :skin_color
      t.integer :homeworld

      t.timestamps
    end

    add_reference(:people, :planet)

    create_table :films_people, id: false do |t|
      t.belongs_to :film
      t.belongs_to :person
    end
  end
end
