class GamesController < ApplicationController

  def new
    if logged_in?
      Game.create(user_id: current_user.id)
      Space.reset
      Game.clear_bombs
      Game.bomb_maker
      @current_user = current_user
      redirect_to '/games/board'
    end
  end

  def location
    @game = Game.last
    @location = get_space
    @current_user = current_user
    if Game.bombs.include?(@location)
      @current_user.losses += 1
      @current_user.save
      redirect_to "/games/loser"
    else
      @user_guess = Space.find_by(location: @location)
      @user_guess.update(guessed: true, button_class: "guessed_button")

      Game.increment_guess_counter
      if Game.guess_count == Game.guess_limit
        # byebug
        @current_user.wins += 1
        @current_user.save
        redirect_to "/games/winner"
      else
        redirect_to "/games/board"
      end
    end
  end

  def board
  end

  def loser
  end

  def winner
  end


  private

  def get_space
    params[:location][-3..-1]
  end

end
