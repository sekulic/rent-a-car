require 'rails_helper'

RSpec.describe "ComfortTypes", :type => :request do
  describe "GET /comfort_types" do
    it "works! (now write some real specs)" do
      get comfort_types_path
      expect(response).to have_http_status(200)
    end
  end
end
