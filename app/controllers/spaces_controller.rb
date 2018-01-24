class SpacesController < ApplicationController

  # def create
  #   set_space
  #   redirect_to "/spaces/location=#{@location}"
  # end

  # def location
  #   @location = get_space
  #   if @location == Grid.bomb
  #     Game.add_loss
  #     redirect_to "/spaces/loser"
  #   else
  #     # byebug
  #     @user_guess = Space.find_by(location: @location)
  #     @user_guess.update(guessed: true, button_class: "guessed_button")
  #     Grid.increment_guess_counter
  #     if Grid.guess_count == Space.guess_limit
  #       Game.add_win
  #       redirect_to "/spaces/winner"
  #     else
  #       redirect_to "/spaces/board"
  #     end
  #   end
  # end

  # def board
  # end

  # private
  #
  # def get_space
  #   params[:location][-3..-1]
  # end


end
