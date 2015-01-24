require 'rails_helper'

RSpec.describe "comfort_types/index", :type => :view do
  before(:each) do
    assign(:comfort_types, [
      ComfortType.create!(
        :name => "Name",
        :price => "9.99"
      ),
      ComfortType.create!(
        :name => "Name",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of comfort_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
