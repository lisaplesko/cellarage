class WinesController < ApplicationController

  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def show
    @wine = Wine.find(params[:id])
    @review = @wine.reviews.new
  end

  def create
    # @wine = current_user.wines.new(article_params)
    @wine = Wine.new(wine_params)
    if @wine.save
      flash[:notice] = 'Wine successfully added to collection!'
      redirect_to root_path
    # else
    #   flash.now[:alert] = @wine.errors.full_messages.join(', ')
    #   render :new
    end
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :vineyard, :vintage, :category, :description, :grape, :price, :occasion)
  end

end
