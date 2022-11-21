class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.text :description
      t.string :photo_url
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
