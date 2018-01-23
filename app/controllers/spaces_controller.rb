class SpacesController < ApplicationController

  def new
    @grid = Grid.last
    @spaces = @grid.spaces
  end

  def create
    @location = params[:location]
    @space = Space.find_by(location: @location)
    @guessed = @space.guessed

    bomb_present = Space.bomb_checker(@location)
    redirect_to "/spaces/location=#{@location}"

  end

  def location
    # byebug
    @location = params[:location][-3..-1]
    @space = Space.find_by(location: @location)
    @guessed = @space.guessed
    bomb_present = Space.bomb_checker(@location)

  end

  private

  def spaces_params
    params.require(:spaces).permit(:guessed)
  end
end
