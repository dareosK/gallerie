class AddColumnsToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :x, :integer
    add_column :artworks, :y, :integer
    add_column :artworks, :width, :integer
  end
end
