class Game < ApplicationRecord
  belongs_to :user

  @@bomb = ""
  @@guess_limit = 5

  def self.bomb_maker
    # CORRECT CODE
    x = rand(Space.size)
    y = rand(Space.size)
    @@bomb = "#{x}-#{y}"
    @@guess_count = 0
    # END OF CORRECT CODE

    # Attempt to make multiple bombs
    # @@bombs = []
    # 3.times do
    #   x = rand(Space.size)
    #   y = rand(Space.size)
    #   bomb = "#{x}-#{y}"
    #   @@bombs << bomb
    # end
    # End of attempt
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

  def self.bomb
    @@bomb
  end

  def self.guess_limit
    @@guess_limit
  end

end
