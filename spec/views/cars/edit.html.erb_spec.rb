require 'rails_helper'

RSpec.describe "cars/edit", :type => :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "MyString",
      :description => "MyText",
      :comfort_type => "MyString",
      :available => false
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_name[name=?]", "car[name]"

      assert_select "textarea#car_description[name=?]", "car[description]"

      assert_select "input#car_comfort_type[name=?]", "car[comfort_type]"

      assert_select "input#car_available[name=?]", "car[available]"
    end
  end
end
