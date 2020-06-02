class CreateWritings < ActiveRecord::Migration[6.0]
  def change
    create_table :writings do |t|
      t.string :title
      t.date :publishing_date
      t.string :publisher
      t.text :article
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
