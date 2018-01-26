require "rails_helper"
# require_relative("../app/models/game.rb")
# require_relative("../app/models/application_record.rb")

describe "reset" do

  it "new spaces should create 25 new spaces in db" do
    Space.new
    Space.new_spaces
    expect(Space.all.size).to be(25)
  end
  #
  it "should create spaces whose 'guessed' attribute defaults to false" do
    Space.new
    Space.new_spaces
    expect(Space.first.guessed).to be(false)
  end

  it "should create spaces whose 'button_class' attribute defaults to 'button'" do
    Space.reset
    test_space = Space.last
    expect(test_space.button_class).to eq("button")
  end






end
