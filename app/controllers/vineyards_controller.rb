class VineyardsController < ApplicationController

  # This will add a new vineyard to the dropdown list so user can add new wine
  # if vineyard not already saved.  Redirect to same form.
  def create
    @vineyard = Vineyard.create(vineyard_params)
    redirect_to request.referer
  end

  def edit
    current_wine = current_user.wines.find(params[:id])
    @vineyard = current_wine.vineyard
  end

  def update
    current_wine = current_user.wines.find(params[:id])
    vineyard = current_wine.vineyard
    vineyard.update(vineyard_params)
    redirect_to current_wine
  end

  private

  # Storing address & country for vineyards as a possibility for app expansion
  def vineyard_params
    params.require(:vineyard).permit(:name, :address, :country)
  end

end
