class CreateMapNodes < ActiveRecord::Migration
  def change
    create_table :map_nodes do |t|
      t.integer :degree
      t.string :title
      t.text :content
      t.integer :rating
      t.string :audio_path
      t.string :path

      t.timestamps null: false
    end
  end
end
