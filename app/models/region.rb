class Region < ApplicationRecord
  belongs_to :country
  has_many :cities
  validates_presence_of :region_name, :country_id
end
