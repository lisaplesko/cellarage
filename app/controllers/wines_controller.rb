class WinesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if user_signed_in?
      @wines = current_user.wines
    else
      @wines = Wine.all

    end
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
  end


  def upcount
    wine = Wine.find(params[:id])
    wine.on_hand += 1
    wine.save
    redirect_to wine
  end

  def downcount
    wine = Wine.find(params[:id])

    if wine.on_hand >= 1
      wine.on_hand -= 1
      wine.consumption += 1
      wine.save
      redirect_to wine
    else
      flash[:notice] = "Sorry, no wine available to drink!"
      redirect_to wine
    end

  end


  def create
    # @wine = current_user.wines.new(article_params)
    @wine = current_user.wines.new(wine_params)
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
    params.require(:wine).permit(:name, :vineyard_id, :vintage, :description, :price, :category, :grape, :occasion, :on_hand, :consumption, :region )
  end

end
