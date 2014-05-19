wine = Wine.create!(name: "Eroica",
    vineyard: "Chateau Ste. Michelle",
    description: "Eroica is an elegant off-dry Washington Riesling that has blazed a trail for high-end American Riesling.",
    price: 29.99,
    vintage: 2011,
    category: "white",
    grape: "Riesling",
    occasion: "everyday")



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
