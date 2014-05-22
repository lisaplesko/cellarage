User.delete_all
Vineyard.delete_all
Wine.delete_all


lisa = User.create!(email: 'plesko.l@gmail.com', password: 'password')

# v1 = Vineyard.create!(name: 'Chateau Ste. Michelle',
#                       address: '14111 NE 145th St, Woodinville, WA 98072',
#                       country: 'USA')

# v2 = Vineyard.create!(name: 'Sokol Blosser',
#                       address: '5000 NE Sokol Blosser Ln, Dayton, OR 97114',
#                       country: 'USA')



# lisa.wines << v1.wines.create!(name: 'Eroica Riesling',
#                     vintage: 2011,
#                     description: 'Crisp white',
#                     price: 19.99,
#                     category: 'White',
#                     grape: 'Riesling',
#                     occasion: 'everyday',
#                     on_hand: 3 )

# lisa.wines << v2.wines.create!(name: 'Pinot Noir Dundee Hills',
#                     vintage: 2009,
#                     description: 'Nice',
#                     price: 39.99,
#                     category: 'Red',
#                     grape: 'Pinot Noir',
#                     occasion: 'nice',
#                     on_hand: 2 )

# NEW SEED BELOW

v1 = Vineyard.create!(name: 'Truchard Vineyards',
                      address: '3234 Old Sonoma Rd, Napa, CA 94559',
                      country: 'USA')

lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon Reserve',grape: 'Cabernet Sauvignon ',vintage: 2009,region: 'Carneros Valley', on_hand: 6,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon Reserve',grape: 'Cabernet Sauvignon ',vintage: 2008,region: 'Carneros Valley', on_hand: 7,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon Reserve',grape: 'Cabernet Sauvignon ',vintage: 2007,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon Reserve',grape: 'Cabernet Sauvignon ',vintage: 2005,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2010,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2009,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2008,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Syrah',grape: 'Syrah',vintage: 2009,region: 'Carneros Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Pinot Noir',grape: 'Pinot Noir',vintage: 2011,region: 'Carneros Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Pinot Noir',grape: 'Pinot Noir',vintage: 2009,region: 'Carneros Valley', on_hand: 3,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Pinot Noir',grape: 'Pinot Noir',vintage: 2007,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Zinfandel',grape: 'Zinfandel',vintage: 2009,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Franc',grape: 'Cabernet Franc',vintage: 2010,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Franc',grape: 'Cabernet Franc',vintage: 2008,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Cabernet Franc',grape: 'Cabernet Franc',vintage: 2007,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Petit Verdot',grape: 'Petit Verdot',vintage: 2010,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Petit Verdot',grape: 'Petit Verdot',vintage: 2009,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Petit Verdot',grape: 'Petit Verdot',vintage: 2008,region: 'Carneros Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Petit Verdot',grape: 'Petit Verdot',vintage: 2006,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Tempranillo',grape: 'Tempranillo',vintage: 2006,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Tempranillo',grape: 'Tempranillo',vintage: 2007,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Tempranillo',grape: 'Tempranillo',vintage: 2008,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Tempranillo',grape: 'Tempranillo',vintage: 2009,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Roussanne',grape: 'Roussanne',vintage: 2010,region: 'Carneros Valley', on_hand: 1,category: 'White',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Roussanne',grape: 'Roussanne',vintage: 2012,region: 'Carneros Valley', on_hand: 1,category: 'White',occasion: 'Nice dinner')
lisa.wines << v1.wines.create!(name: 'Merlot',grape: 'Merlot',vintage: 2010,region: 'Carneros Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')


v2 = Vineyard.create!(name: 'Heitz Cellars',address: '500 Taplin Road St. Helena, California 94574',country: 'USA')
v3 = Vineyard.create!(name: 'Castello di Amorosa',address: '4045 St Helena Hwy, Calistoga, CA 94515',country: 'USA')
v4 = Vineyard.create!(name: 'Beaulieu Vineyard',address: '1960 St Helena Hwy, Rutherford, CA 94573',country: 'USA')
v5 = Vineyard.create!(name: 'Chappellet',address: '1581 Sage Canyon Rd, St Helena, CA 94574',country: 'USA')
v6 = Vineyard.create!(name: 'Hewitt Vineyard',address: '1695 Saint Helena Highway, Rutherford, CA 94573',country: 'USA')
v7 = Vineyard.create!(name: 'Chimney Rock',address: '5350 Silverado Trail, Napa, CA 94558',country: 'USA')
v8 = Vineyard.create!(name: 'Del Dotto',address: '1055 Atlas Peak Rd, Napa, CA 94558',country: 'USA')
v10 = Vineyard.create!(name: 'V. Sattui Winery',address: '1111 White Ln, St Helena, CA 94574',country: 'USA')
v11 = Vineyard.create!(name: 'Conn Creek',address: '8711 Silverado Trail, St Helena, CA 94574',country: 'USA')
v12 = Vineyard.create!(name: 'Spring Valley Vineyard',address: '18 N 2nd Ave, Walla Walla, WA 99362',country: 'USA')
v13 = Vineyard.create!(name: 'Marchesi Antinori',address: 'Piazza Antinori, 3, 50123 Firenze - Italia',country: 'Italy')
v14 = Vineyard.create!(name: 'Antinori Family Estate',address: '3700 Soda Canyon Rd, Napa, CA 94558',country: 'USA')
v15 = Vineyard.create!(name: 'Fattorie Melini',address: 'Tuscany, Italy',country: 'Italy')
v16 = Vineyard.create!(name: 'C. Berardenga',address: 'Tuscany, Italy',country: 'Italy')


lisa.wines << v2.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2007,region: 'St. Helena', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v2.wines.create!(name: 'Cabernet Sauvignon, Bella Oaks Vineyard',grape: 'Cabernet Sauvignon',vintage: 2007,region: 'St. Helena', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v3.wines.create!(name: 'Il Barone',grape: 'Cabernet Sauvignon ',vintage: 2005,region: 'Napa Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v3.wines.create!(name: 'La Castellana',grape: 'Cabernet Blend',vintage: 2005,region: 'Napa Valley', on_hand: 0,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v3.wines.create!(name: 'Il Passito',grape: 'Late Harvest Semillon',vintage: 2006,region: 'Sonoma County', on_hand: 1,category: 'Dessert',occasion: 'Nice dinner')
lisa.wines << v3.wines.create!(name: 'Il Raggio Del Sole',grape: 'Muscat Canelli',vintage: 2009,region: 'Santa Barbara County', on_hand: 2,category: 'White',occasion: 'Nice dinner')
lisa.wines << v3.wines.create!(name: 'Gewurztraminer',grape: 'Gewurztraminer',vintage: 2009,region: 'Anderson Valley', on_hand: 1,category: 'White',occasion: 'Nice dinner')
lisa.wines << v3.wines.create!(name: 'Gewurztraminer Dolcino',grape: 'Gewurztramine',vintage: 2008,region: 'Anderson Valley', on_hand: 1,category: 'White',occasion: 'Nice dinner')
lisa.wines << v4.wines.create!(name: 'Georges De Latour',grape: 'Cabernet Sauvignon',vintage: 2006,region: 'Napa Valley', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v4.wines.create!(name: 'Georges De Latour',grape: 'Cabernet Sauvignon',vintage: 2007,region: 'Napa Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v4.wines.create!(name: 'Napa Valley Port',grape: 'Port',vintage: 2004,region: 'Napa Valley', on_hand: 3,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v4.wines.create!(name: 'Pinot Noir Reserve',grape: 'Pinot Noir',vintage: 2007,region: 'Carneros Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v4.wines.create!(name: 'Muscat de Beaulieu',grape: 'Muscat',region: 'Napa Valley', on_hand: 2,category: 'Dessert',occasion: 'Nice dinner')
lisa.wines << v5.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2009,region: 'St. Helena', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v6.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2006,region: 'Rutherford', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v7.wines.create!(name: 'Cabernet Sauvignon ',grape: 'Cabernet Sauvignon ',vintage: 2007,region: 'Stags Leap', on_hand: 1,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v8.wines.create!(name: 'Pinot Noir',grape: 'Pinot Noir',vintage: 2008,region: 'Sonoma Coast', on_hand: 2,category: 'Red',occasion: 'Holiday')
lisa.wines << v8.wines.create!(name: 'Lot X MO FO D254',grape: 'Cabernet Sauvignon ',vintage: 2008,region: 'St. Helena', on_hand: 1,category: 'Red',occasion: 'Holiday')
lisa.wines << v8.wines.create!(name: 'Vineyard 887',grape: 'Cabernet Sauvignon ',vintage: 2008,region: 'Napa Valley', on_hand: 1,category: 'Red',occasion: 'Holiday')
lisa.wines << v8.wines.create!(name: 'The David',grape: 'Cabernet Blend',vintage: 2008,region: 'Napa Valley', on_hand: 1,category: 'Red',occasion: 'Holiday')
lisa.wines << v8.wines.create!(name: 'Caves',grape: 'Sangiovese',vintage: 2008,region: 'Napa Valley', on_hand: 2,category: 'Red',occasion: 'Holiday')
lisa.wines << v10.wines.create!(name: 'Muscat',grape: 'Muscat',vintage: 2008,region: 'St. Helena', on_hand: 1,category: 'Dessert',occasion: 'Nice dinner')
lisa.wines << v10.wines.create!(name: 'Moscato',grape: 'Moscato',vintage: 2009,region: 'St. Helena', on_hand: 1,category: 'Dessert',occasion: 'Nice dinner')
lisa.wines << v11.wines.create!(name: 'Anthology',grape: 'Cabernet',vintage: 2003,region: 'St. Helena', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v12.wines.create!(name: 'Uriah',grape: 'Merlot',vintage: 2006,region: 'Walla Walla Valley', on_hand: 2,category: 'Red',occasion: 'Nice dinner')
lisa.wines << v13.wines.create!(name: 'Villa Antinori',grape: 'Toscana I.G.T.',vintage: 2009,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v13.wines.create!(name: 'Villa Antinori',grape: 'Toscana I.G.T.',vintage: 2007,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v13.wines.create!(name: 'Villa Antinori',grape: 'Chianti',vintage: 2010,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v13.wines.create!(name: 'Villa Antinori',grape: 'Chianti',vintage: 2007,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v14.wines.create!(name: 'Antica',grape: 'Cabernet Sauvignon ',vintage: 2007,region: 'Napa Valley', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v15.wines.create!(name: 'Vigneti La Selvanella',grape: 'Chianti',vintage: 2006,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')
lisa.wines << v16.wines.create!(name: 'Castello di Bossi',grape: 'Chianti',vintage: 2007,region: 'Tuscany', on_hand: 1,category: 'Red',occasion: 'Every day')

