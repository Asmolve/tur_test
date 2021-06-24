class Country < ApplicationRecord
  has_many :regions
  validates_presence_of :country_name
end
