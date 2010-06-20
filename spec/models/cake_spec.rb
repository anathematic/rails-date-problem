require 'spec_helper'

describe Cake do
  before(:each) do
    @valid_attributes = {
      :title => "Chocolate Cake",
      :description => "It's the best kind of cake.",
      :loved_at => Date.today
    }
  end
  
  it "should be able to create a cake without changing the loved_at date" do
    @cake = Cake.new(@valid_attributes)
    @cake.save
    @cake.loved_at.should eql(Date.today)
  end
end
