class City < ApplicationRecord
  belongs_to :region
  has_many :campsites
  validates_presence_of :city_name, :region_id
end
