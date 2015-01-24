class Rent < ActiveRecord::Base
  belongs_to :car
  validates_presence_of :no_of_days, :car_id
end