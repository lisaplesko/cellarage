class WinesController < ApplicationController

  # def new
  #   @vineyard = Vineyard.new
  # end

  def create
    @vineyard = Vineyard.create(vineyard_params)
  end


  private

  def vineyard_params
    params.require(:vineyard).permit(:name, :address, :country)
  end

end
