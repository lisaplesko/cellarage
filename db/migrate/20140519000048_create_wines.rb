class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name, null: false
      t.string :vineyard, null: false
      t.string :description
      t.float :price
      t.integer :vintage
      t.string :category
      t.string :grape
      t.string :occasion

      t.timestamps
    end
  end
end
