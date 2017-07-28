class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.datetime :released_at
      t.belongs_to :artist, index: true
      # t.belongs_to :artist, foreign_key: true
      t.timestamps
    end
    # add_foreign_key :albums, :artists
  end
end
