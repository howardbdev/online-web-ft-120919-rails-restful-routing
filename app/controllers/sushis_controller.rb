class SushisController < ApplicationController
  def index
    # what needs to happen here??
    @sushis = Sushi.all
  end  

end
