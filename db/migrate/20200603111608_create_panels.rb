class CreatePanels < ActiveRecord::Migration[6.0]
  def change
    create_table :panels do |t|
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
