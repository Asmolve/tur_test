require 'rails_helper'

RSpec.describe Country, type: :model do
  before(:all) do
    @country1 = create(:country)
  end
end
