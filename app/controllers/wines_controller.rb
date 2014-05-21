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
  end

  # Search used for API request, passing in vineyard name and grape type
  def search
    @wine = Wine.find(params[:id])
    vineyard_name = @wine.vineyard.name
    varietal = @wine.grape
    @response = Wine.response(vineyard_name, varietal)
    render :search_results
  end

  def edit
    @wine = Wine.find(params[:id])
    @vineyard_options = Vineyard.all.map{ |vineyard| [vineyard.name, vineyard.id] }
  end

  def update
    wine = Wine.find(params[:id])
    wine.update(wine_params)
    redirect_to wine
  end

  # Find current wine, increase on_hand count by 1 for each button press, save.
  def upcount
    wine = Wine.find(params[:id])
    wine.on_hand += 1
    wine.save
    redirect_to wine
  end

  # Increases the consumption count by 1 and ALSO decreases on_hand count by 1.
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
