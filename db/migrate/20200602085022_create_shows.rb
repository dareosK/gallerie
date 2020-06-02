class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.text :statement
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
