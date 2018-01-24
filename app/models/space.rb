class Space < ApplicationRecord

  @@size = 4
  # @@guess_limit = (@@size * @@size)
  @@guess_limit = 5

  def self.reset
    Space.delete_all
    Space.new_spaces
  end

  def self.new_spaces
    (0..@@size).each do |row|
      (0..@@size).each do |col|
        Space.create(location: "#{row}-#{col}")
      end
    end
  end

  def self.find_spaces(grid)
    @spaces = grid.spaces
  end

  def self.size
    @@size
  end

  def self.guess_limit
    @@guess_limit
  end

end
