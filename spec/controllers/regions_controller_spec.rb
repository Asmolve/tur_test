require 'rails_helper'

RSpec.describe RegionsController, type: :controller do

  let(:valid_attributes) {
    { :region_name => "Test", :country_id => "1" }
  }
  let(:invalid_attributes) {
    { :region_name => "Test", :country_id => "-1" }
  }

  describe "GET #index" do
    it "returns a success response" do
      Region.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful # means no need to authenticate to create a new region
    end
    # it "returns a fail response" do
    #   Region.create! invalid_attributes
    #   get :index, params: {}
    #   expect(response).to be_successful # means can't input not existing country_id
    # end
  end
end

