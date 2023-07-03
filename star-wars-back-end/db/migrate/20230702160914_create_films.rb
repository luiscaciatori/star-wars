class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :episode_id
      t.text :opening_crawl
      t.string :director
      t.string :producer
      t.timestamp :release_date

      t.timestamps
    end
  end
end
