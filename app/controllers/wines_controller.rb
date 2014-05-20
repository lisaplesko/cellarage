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
    @response = Wine.response(@wine[:product_key])
  end


  def update
    @wine = Wine.find(params[:id])
    @wine[:on_hand].increment!(1)
    redirect_to @wine
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
    params.require(:wine).permit(:product_key, :name, :vineyard, :vintage, :category, :description, :grape, :price, :occasion)
  end

end
