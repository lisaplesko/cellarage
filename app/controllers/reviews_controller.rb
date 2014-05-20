class ReviewsController < ApplicationController

  def create
    wine = Wine.find(params[:wine_id])
    @review = wine.reviews.new(description: review_params[:description])
    if @review.save
      flash[:notice] = 'Review saved!'
      redirect_to wine
    else
      flash.now[:alert] = @review.errors.full_messages.join(', ')
      render [:new, wine, @review]
    end
  end



  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
