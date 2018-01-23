class Space < ApplicationRecord
  belongs_to :grid


  def self.bomb_checker(location)
    @user_guess = Space.find_by(location: location)
    if @user_guess.bomb == true
      true
    else
      false
    end
  end

  def self.make_guess(location)
    @user_guess = Space.find_by(location: location)
    @user_guess.update(guessed: true)
  end

  def self.class_update(location)
    @user_guess = Space.find_by(location: location)
    if @user_guess.bomb == true
      @user_guess.update(button_class: "bomb_button")
    else
      @user_guess.update(button_class: "guessed_button")
    end
  end

  def self.win
    @guess_count = Space.where(:guessed => true).count
    #change this to 2 afterwards
      if @guess_count >= 2
        true
      else
        false
      end
  end

    def self.reset
      Space.all.each do |space|
        space.guessed = false
        space.button_class = "button"
        space.save
      end
    end
    #
    # def self.create_button
    #     <%= button_to @button_id, spaces_path, {method: :post, params: { location: "#{@grid_location.location}" }, class: "guessed_button"} %>
    # end






end
