wine = Wine.create!(name: 'Eroica Riesling',
                    vineyard: 'Chateau Ste. Michelle',
                    vintage: 2011,
                    description: 'Crisp white',
                    price: 19.99,
                    category: 'white',
                    grape: 'riesling',
                    occasion: 'everyday',
                    on_hand: 3,
                    consumption: 1 )

wine = Wine.create!(name: 'Pinot Noir Dundee Hills',
                    vineyard: 'Sokol Blosser',
                    vintage: 2009,
                    description: 'Nice',
                    price: 39.99,
                    category: 'red',
                    grape: 'pinot noir',
                    occasion: 'nice',
                    on_hand: 2,
                    consumption: 3 )




 # def change
 #    create_table :wines do |t|
 #      t.string :name
 #      t.string :vineyard
 #      t.integer :vintage
 #      t.string :description
 #      t.float :price
 #      t.string :category
 #      t.string :grape
 #      t.string :occasion
 #      t.integer :on_hand
 #      t.integer :consumption
 #      t.text :review
 #      t.integer :product_key #, null: false, index: true

 #      t.timestamps
 #    end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
