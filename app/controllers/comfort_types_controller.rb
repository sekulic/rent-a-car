class ComfortTypesController < ApplicationController
  include ApplicationHelper
  before_action :check_isadmin?
  expose(:comfort_types) 
  expose(:comfort_type, attributes: :comfort_type_params)  
 
  def create
    self.comfort_type = ComfortType.new(comfort_type_params)
    if comfort_type.save
      redirect_to(comfort_type, notice: 'Comfort type was successfully created.')
    else
      render :new
    end
  end

  def update
    if comfort_type.update(comfort_type_params)
      redirect_to(comfort_type, notice: 'Comfort type was successfully updated.')
    else
      render :edit
    end
  end 

  def destroy
    comfort_type.destroy
    redirect_to comfort_types_url, notice: 'Comfort type was successfully destroyed.'
  end

  private
    def comfort_type_params
      params.require(:comfort_type).permit(:name, :price)
    end
end
