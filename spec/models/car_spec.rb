require 'rails_helper'

RSpec.describe Car, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:car).should be_valid 
 end 
 it "is invalid without a name" do
   FactoryGirl.build(:car, name: nil).should_not be_valid 
 end  
 it "is invalid without a description" do
   FactoryGirl.build(:car, name: nil).should_not be_valid 
 end 
end
