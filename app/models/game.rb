class Game < ApplicationRecord
  belongs_to :user

  @@bombs = []
  @@guess_limit = 5
  @@number_of_bombs = 3

  def self.bomb_maker
    @@number_of_bombs.times do
      x = rand(Space.size)
      y = rand(Space.size)
      bomb = "#{x}-#{y}"
      @@bombs << bomb
    end
    @@guess_count = 0
  end

  def self.add_win
    @user = User.last
    @user.wins +=1
    @user.save
  end

  def self.add_loss
    @user = User.last
    @user.losses +=1
    @user.save
  end

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
