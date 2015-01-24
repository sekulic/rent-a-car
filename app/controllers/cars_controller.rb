class CarsController < ApplicationController
  include ApplicationHelper
  before_action :check_isadmin?, only: [:new, :edit, :update, :create, :destroy]
  expose(:cars)
  expose(:car, attributes: :car_params)
  expose(:comfort_types) 
  expose(:comfort_type) 
  def show
    @rent = Rent.new
  end      
  def create
    self.car = Car.new(car_params)
    if car.save
      redirect_to(car, notice: 'Car was successfully created.')
    else
      render :new
    end
  end

  def update
    if car.save
      redirect_to(car, notice: 'Car was successfully updated.')
    else
      render :edit
    end
  end 

  def destroy
    car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end
  def car_available
    car_id = params[:format].to_i    
    @car = Car.find(car_id)
    @car.update(available: true)
  end
  private
    def car_params
      params.require(:car).permit(:name, :description, :comfort_type_id, :available, :photo3, :photo2, :photo1)
    end
end
