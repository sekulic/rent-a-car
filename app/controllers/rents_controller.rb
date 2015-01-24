class RentsController < ApplicationController
  include ApplicationHelper
  before_action :check_isadmin?
  def create
    @rent = Rent.new(rent_params)
    @car = Car.find(rent_params[:car_id])
    @car.update(available: false)
    respond_to do |format|
      if @rent.save
        format.js { }
      else
        format.js { }
      end
    end
  end
  def rent_params
    params.require(:rent).permit(:no_of_days, :car_id)
  end      
end
