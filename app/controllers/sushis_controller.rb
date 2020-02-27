class SushisController < ApplicationController
  def index
    # what needs to happen here??
    @sushis = Sushi.all
  end

  def show
    @sushi = Sushi.find(params[:id])
  end

  def new
    @sushi = Sushi.new
  end

  def create
    # receive form data to create a new sushi roll
    @sushi = Sushi.new(sushi_params)

    if @sushi.save
      # success
      redirect_to sushi_path(@sushi)
    else
      # failure - something went wrong...
      render :new
    end
  end

  def edit
    @sushi = Sushi.find(params[:id])
  end

  def update
    # receive form data to edit an existing sushi roll
    @sushi = Sushi.find(params[:id])


    if @sushi.update(sushi_params)
      # success
      redirect_to sushi_path(@sushi)
    else
      # failure - something went wrong...
      render :edit
    end
  end

  def destroy
    @sushi = Sushi.find(params[:id])
    @sushi.destroy
    redirect_to '/'
  end

  private

  def sushi_params
    params.require(:sushi).permit(:name)
  end

end
