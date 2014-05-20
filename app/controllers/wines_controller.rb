class WinesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
    @vineyard_options = Vineyard.all.map{ |vineyard| [vineyard.name, vineyard.id] }
    @vineyard = Vineyard.new
  end

  def show
    @wine = Wine.find(params[:id])
    @review = @wine.reviews.new
    # @response = Wine.response(@wine[:product_key])
  end

  def update
    # @wine = Wine.find(params[:id])
    # @wine[:on_hand].increment!(1)
    # redirect_to @wine
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
    params.require(:wine).permit(:name, :vineyard_id, :vintage, :description, :price, :category, :grape, :occasion, :on_hand, :consumption )
  end

end
