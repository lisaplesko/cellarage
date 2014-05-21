class Wine < ActiveRecord::Base
  has_many :reviews
  belongs_to :vineyard
  belongs_to :user
  accepts_nested_attributes_for :vineyard, :reject_if => :all_blank

  CATEGORIES = ['Red', 'White', 'Rosé', 'Sparking', 'Dessert']
  GRAPES = ['Barolo',
            'Blush',
            'Bordeaux',
            'Cabernet',
            'Cabernet Franc',
            'Cabernet Sauvignon',
            'Champagne',
            'Chardonnay',
            'Chenin Blanc',
            'Chianti',
            'Gewürztraminer',
            'Malbec',
            'Merlot',
            'Moscato',
            'Other',
            'Petit Sirah',
            'Pinot Gris',
            'Pinot Noir',
            'Port',
            'Riesling',
            'Sangiovese',
            'Sauvignon Blanc',
            'Syrah/Shiraz',
            'Tempranillo',
            'Zinfandel']

  OCCASIONS = ['Everyday', 'Nice dinner', 'Holiday']


  include HTTParty

  def self.response(vineyard, varietal)
    # binding.pry
    api_key = ENV['WINE_API_KEY']
    #@product_key = Wine.find(params[:product_key])
    api_url = "http://services.wine.com/api/beta2/service.svc/json/catalog?search=#{URI.encode(vineyard)}+#{URI.encode(varietal)}&apikey=#{api_key}"
    HTTParty.get(api_url)
  end

end
