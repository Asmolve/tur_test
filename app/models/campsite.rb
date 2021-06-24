class Campsite < ApplicationRecord
  belongs_to :city
  validates_presence_of :campsite_name, :city_id
end
