require "rails_helper"
# require_relative("../app/models/game.rb")
# require_relative("../app/models/application_record.rb")

describe "user" do

  it "a user should have a name" do
    User.create(name: nil).should_not be_valid
  end
  it "there should be no users with the same name" do
    User.create(name: "Bob")
    User.create(name: "Bob").should_not be_valid
  end








end
