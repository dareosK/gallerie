class AddPanelToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_reference :artworks, :panel, null: false, foreign_key: true
  end
end
