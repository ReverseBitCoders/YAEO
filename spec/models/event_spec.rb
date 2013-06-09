require 'spec_helper'
require 'factory_girl_rails'

describe Event do
  before :each do
    @event = FactoryGirl.build(:event)
  end

  it "has a Valid Factory" do
    FactoryGirl.create(:event).should be_valid
  end

  it "should have a name" do
    @event.should be_valid
  end

  it "should have a valid name" do
    @event.name = nil
    @event.should_not be_valid
  end

  it "should have name less than 100 characters" do
    names = ["a"*101, "a"*99]
    @event.name = names[0]
    @event.should_not be_valid

    @event.name = names[1]
    @event.should be_valid
  end
end
