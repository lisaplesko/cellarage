class Wine < ActiveRecord::Base
  has_many :reviews
  belongs_to :vineyard
  belongs_to :user
  validates :name, presence: true
  validates :vineyard, presence: true

  SEARCH_CRITERIA = ['category', 'grape', 'occasion']

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
            'Muscat',
            'Other',
            'Petit Sirah',
            'Petit Verdot',
            'Pinot Gris',
            'Pinot Noir',
            'Port',
            'Riesling',
            'Roussanne',
            'Sangiovese',
            'Semillon',
            'Sauvignon Blanc',
            'Syrah',
            'Tempranillo',
            'Zinfandel']

  OCCASIONS = ['Every day', 'Nice dinner', 'Holiday', 'Celebration']

  validates :category, inclusion: { in: CATEGORIES }
  validates :grape, inclusion: { in: GRAPES }
  validates :occasion, inclusion: { in: OCCASIONS }


  include HTTParty

  # Generates the url needed for API requests.
  # Use URI.encode to strip spaces from search items so it's a valid URL
  def self.response(vineyard, varietal)
    api_key = ENV['WINE_API_KEY']
    api_url = "http://services.wine.com/api/beta2/service.svc/json/catalog?search=#{URI.encode(vineyard)}+#{URI.encode(varietal)}&apikey=#{api_key}"
    HTTParty.get(api_url)
  end

  ## Search fields for sorting on index page. Could be more DRY!

  def self.by(query_params)
# Query params will come in like the following:
#      {category: "Red"}
#      {grape: "Cabernet"}
#      {occasion: "Celebration"}
    Wine.where(query_params).order(:name)
  end


end
