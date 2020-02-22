class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
      t.index ['artist_id'], name: "index_songs_on_artist_id"
      t.index ['genre_id'], name: "index_songs_on_genre_id"

      t.timestamps
    end
  end
end
