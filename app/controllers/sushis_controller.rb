class SushisController < ApplicationController
  def index
    # what needs to happen here??
    @sushis = Sushi.all
  end

  def show
    @sushi = Sushi.find(params[:id])
  end

end
