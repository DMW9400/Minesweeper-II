require "rails_helper"
require_relative("../app/models/game.rb")
# require_relative("../app/models/application_record.rb")

RSpec.describe Game, :type => :model do

subject {
  described_class.new(id: 1)}


# RSpec.describe Task, :type => :model do


# Works
  it "game should belong to user" do
    Game.create(user_id: nil).should_not be_valid
  end
# Works
  it "bomb maker should three bombs" do
    Game.bomb_maker
    expect(Game.bombs.size).to be(3)
  end

# Works
  it "Game initializes with a guess count of 0" do
    expect(Game.guess_count).to be(0)
  end
# Works
  it "clear bombs method should erase all bombs" do
    Game.new
    Game.bomb_maker
    Game.clear_bombs
    expect(Game.bombs.size).to be(0)
  end

  # Works
  it "bomb_maker should set @@guess_count to 0" do
    expect(Game.bomb_maker).to be(0)
  end


end
