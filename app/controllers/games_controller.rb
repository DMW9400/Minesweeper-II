class GamesController < ApplicationController

  def new
    Game.create(user_id: User.last.id)
    Space.reset
    Game.bomb_maker
    redirect_to '/games/board'
  end

  def location
    @location = get_space
    if @location == Game.bomb
      Game.add_loss
      redirect_to "/games/loser"
    else
      @user_guess = Space.find_by(location: @location)
      @user_guess.update(guessed: true, button_class: "guessed_button")

      Game.increment_guess_counter
      if Game.guess_count == Game.guess_limit
        Game.add_win
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
