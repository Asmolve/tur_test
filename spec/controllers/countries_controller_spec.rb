require 'rails_helper'

RSpec.describe CountriesController, type: :controller do

  let(:valid_attributes) {
    { :country_name => "Test" }
  }
  let(:sql) {
    { :country_name => ";select * from country;" }
  }

  describe "GET #index" do
    it "returns a success response" do
      Country.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful # means no need to authenticate to create a new country
    end
    it "returns a success response" do
      Country.create! sql
      get :index, params: {}
      expect(response).to be_successful # means
    end
  end
end
