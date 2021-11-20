class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.text :url
      t.string :name
      t.text :genre, array: true
      t.text :credits, array: true
      t.boolean :available, default: false
      t.integer :duration_minutes
      t.integer :duration_seconds
      
      t.timestamps
    end
  end
end
