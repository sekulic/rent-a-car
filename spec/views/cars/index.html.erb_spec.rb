require 'rails_helper'

RSpec.describe "cars/index", :type => :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :name => "Name",
        :description => "MyText",
        :comfort_type => "Comfort Type",
        :available => false
      ),
      Car.create!(
        :name => "Name",
        :description => "MyText",
        :comfort_type => "Comfort Type",
        :available => false
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Comfort Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
