class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.references :vineyard, index: true
      t.integer :vintage
      t.string :description
      t.float :price
      t.string :category
      t.string :grape
      t.string :occasion
      t.integer :on_hand
      t.integer :consumption
      t.text :review
      t.integer :product_key #, null: false, index: true

      t.timestamps
    end
  end
end
