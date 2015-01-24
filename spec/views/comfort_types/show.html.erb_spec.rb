require 'rails_helper'

RSpec.describe "comfort_types/show", :type => :view do
  before(:each) do
    @comfort_type = assign(:comfort_type, ComfortType.create!(
      :name => "Name",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
  end
end
