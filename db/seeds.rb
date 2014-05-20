v1 = Vineyard.create!(name: 'Chateau Ste. Michelle',
                      address: '14111 NE 145th St, Woodinville, WA 98072',
                      country: 'USA')

v2 = Vineyard.create!(name: 'Sokol Blosser',
                      address: '5000 NE Sokol Blosser Ln, Dayton, OR 97114',
                      country: 'USA')



v1.wines.create!(name: 'Eroica Riesling',
                    vintage: 2011,
                    description: 'Crisp white',
                    price: 19.99,
                    category: 'white',
                    grape: 'riesling',
                    occasion: 'everyday',
                    on_hand: 3,
                    consumption: 1 )

v2.wines.create!(name: 'Pinot Noir Dundee Hills',
                    vintage: 2009,
                    description: 'Nice',
                    price: 39.99,
                    category: 'red',
                    grape: 'pinot noir',
                    occasion: 'nice',
                    on_hand: 2,
                    consumption: 3 )




# create_table "wines", force: true do |t|
#     t.string   "name"
#     t.integer  "vineyard_id"
#     t.integer  "vintage"
#     t.string   "description"
#     t.float    "price"
#     t.string   "category"
#     t.string   "grape"
#     t.string   "occasion"
#     t.integer  "on_hand"
#     t.integer  "consumption"
#     t.text     "review"
#     t.integer  "product_key"
#     t.datetime "created_at"
#     t.datetime "updated_at"
