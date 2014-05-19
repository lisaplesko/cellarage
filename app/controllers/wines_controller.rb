class WinesController < ApplicationController

  def index
    @wines = Wine.all
  end




end
