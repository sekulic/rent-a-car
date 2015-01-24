require 'rails_helper'

RSpec.describe "comfort_types/new", :type => :view do
  before(:each) do
    assign(:comfort_type, ComfortType.new(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new comfort_type form" do
    render

    assert_select "form[action=?][method=?]", comfort_types_path, "post" do

      assert_select "input#comfort_type_name[name=?]", "comfort_type[name]"

      assert_select "input#comfort_type_price[name=?]", "comfort_type[price]"
    end
  end
end
