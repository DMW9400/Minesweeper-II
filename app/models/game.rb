class Game < ApplicationRecord
  belongs_to :user

  @@bombs = []
  @@guess_limit = 5
  @@number_of_bombs = 3
  @@guess_count = 0

  def self.bomb_maker
    @@number_of_bombs.times do
      x = rand(0..Space.size)
      y = rand(0..Space.size)
      bomb = "#{x}-#{y}"
      @@bombs << bomb
    end
    @@guess_count = 0
  end

  # def self.add_win
  #   # Refactor - check why @current_user isn't transferring from games_controller
  #   # @user = User.find(@game.user_id)
  #   @current_user.wins +=1
  #   @current_user.save
  # end
  #
  # def self.add_loss
  #
  #   # @user = User.find_by(id: session[:user_id])
  #   # @user = User.find(@game.user_id)
  #   @current_user.losses +=1
  #   @current_user.save
  # end

  def self.increment_guess_counter
    @@guess_count += 1
  end

  def self.guess_count
    @@guess_count
  end

  def self.bombs
    @@bombs
  end

  def self.clear_bombs
    @@bombs = []
  end

  def self.guess_limit
    @@guess_limit
  end

end
