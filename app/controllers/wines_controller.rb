class WinesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :welcome]

  def welcome
    @wines = Wine.all
  end

  def index
    # Unhide the next line if pagination desired for wine results.
    # Also need to add <%= will_paginate @posts %> to index page.
      # @wines = Wine.paginate(:page => params[:page], :per_page => 20)

      # Compare the params.keys (an array) with the SEARCH_CRITERIA array -
      # find the intersection (if there is one) and assign it to query_param
      query_param = (params.keys & Wine::SEARCH_CRITERIA).first

      if query_param.nil?
        # logger.debug "Get all wines"
        @wines = Wine.all
      else
        # logger.debug "Get wines by #{params}"
        @wines = Wine.by({query_param.to_sym => params[query_param]})
      end
  end

  def new
    @wine = Wine.new
    # Update list of vineyard options based on current inventory
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

  # Find current wine, increase on_hand count by 1 for each click, save.
  def upcount
    wine = Wine.find(params[:id])
    wine.on_hand += 1
    wine.save
    redirect_to wine
  end

  # Increases the consumption count by 1 and ALSO decreases on_hand count by 1.
  def downcount
    wine = Wine.find(params[:id])
    # Verify that user has wine available to drink, if not, produce "no wine" message
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
    @vineyard_options = Vineyard.all.map{ |vineyard| [vineyard.name, vineyard.id] }
    @vineyard = Vineyard.new
    @wine = current_user.wines.new(wine_params)
    if @wine.save
      flash[:notice] = 'Wine successfully added to collection!'
      redirect_to root_path
    else
      flash.now[:alert] = @wine.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    wine = Wine.find(params[:id])
    wine.destroy
    redirect_to root_path, notice: 'Wine was successfully removed.'
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :vineyard_id, :vintage, :description, :price, :category, :grape, :occasion, :on_hand, :consumption, :region )
  end

end
