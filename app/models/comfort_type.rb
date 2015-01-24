class ComfortType < ActiveRecord::Base
  has_many :cars
  validates_presence_of :name
  validates :price, :presence => true,
              :numericality => true,
              :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }  
end
