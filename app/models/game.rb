class Game < ApplicationRecord
  belongs_to :user
  validates :user_id, presence:true

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
