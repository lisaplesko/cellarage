class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name, null: false, index: true
      t.references :vineyard, index: true
      t.integer :vintage, index: true
      t.string :description
      t.float :price
      t.string :category
      t.string :grape
      t.string :occasion
      t.integer :on_hand, index: true, default: 0
      t.integer :consumption, index: true, default: 0
      t.integer :product_key #, null: false, index: true
      t.string :region, index: true

      t.timestamps
    end
  end
end
