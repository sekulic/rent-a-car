require 'rails_helper'

RSpec.describe "cars/new", :type => :view do
  before(:each) do
    assign(:car, Car.new(
      :name => "MyString",
      :description => "MyText",
      :comfort_type => "MyString",
      :available => false
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input#car_name[name=?]", "car[name]"

      assert_select "textarea#car_description[name=?]", "car[description]"

      assert_select "input#car_comfort_type[name=?]", "car[comfort_type]"

      assert_select "input#car_available[name=?]", "car[available]"
    end
  end
end
