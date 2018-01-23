class SpacesController < ApplicationController

  def new
    @grid = Grid.last
    @spaces = @grid.spaces
  end

  def create
    @location = params[:location]
    redirect_to "/spaces/location=#{@location}"
  end

  def location
    @location = params[:location][-3..-1]
    @space = Space.find_by(location: @location)
    Space.make_guess(@location)
    Space.class_update(@location)
    if Space.bomb_checker(@location)
      redirect_to "/spaces/loser"
    elsif Space.win
      redirect_to "/spaces/winner"
    end
  end

  private

  def spaces_params
    params.require(:spaces).permit(:guessed)
  end
end
