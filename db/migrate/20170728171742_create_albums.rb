class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :image_url
      t.datetime :released_at
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
