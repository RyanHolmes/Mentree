class AddAncestryToMapNodes < ActiveRecord::Migration
  def up
    add_column :map_nodes, :ancestry, :string
    add_index :map_nodes, :ancestry
  end
  def down
    remove_column :map_nodes, :ancestry, :string
    remove_index :map_nodes, :ancestry
  end
end
