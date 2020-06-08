class AddLoglineToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :logline, :string
  end
end
