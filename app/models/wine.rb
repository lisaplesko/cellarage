class Wine < ActiveRecord::Base
  has_many :reviews



  include HTTParty

  def self.response(product_key)
    api_key = ENV['WINE_API_KEY']
    #@product_key = Wine.find(params[:product_key])
    api_url = "http://services.wine.com/api/beta2/service.svc/json/catalog?product=#{product_key}&apikey=#{api_key}"
    HTTParty.get(api_url)
  end

end
