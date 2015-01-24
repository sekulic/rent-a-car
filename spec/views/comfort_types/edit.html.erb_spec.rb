require 'rails_helper'

RSpec.describe "comfort_types/edit", :type => :view do
  before(:each) do
    @comfort_type = assign(:comfort_type, ComfortType.create!(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit comfort_type form" do
    render

    assert_select "form[action=?][method=?]", comfort_type_path(@comfort_type), "post" do

      assert_select "input#comfort_type_name[name=?]", "comfort_type[name]"

      assert_select "input#comfort_type_price[name=?]", "comfort_type[price]"
    end
  end
end
