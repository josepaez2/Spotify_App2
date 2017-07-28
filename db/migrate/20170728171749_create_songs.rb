class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :preview_url
      t.belongs_to :album, index: true
      # t.belongs_to :album, foreign_key: true
      t.timestamps
    end
  end
end
