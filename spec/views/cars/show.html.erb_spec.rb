require 'rails_helper'

RSpec.describe "cars/show", :type => :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "Name",
      :description => "MyText",
      :comfort_type => "Comfort Type",
      :available => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Comfort Type/)
    expect(rendered).to match(/false/)
  end
end
