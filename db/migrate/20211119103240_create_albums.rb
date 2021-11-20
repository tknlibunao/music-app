class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.boolean :released, default: false
      t.date :released_at
      t.text :cover_art_url
      t.integer :duration_hours
      t.integer :duration_minutes
      t.integer :duration_seconds
      t.string :kind
      
      t.timestamps
    end
  end
end
