=begin
FactoryBot.define do
  factory :country do
    country_name {"Test"}
  end

  factory :region do
    region_name { "Test" }
    country_id { 0 }
  end

  factory :city do
    city_name { "Test" }
    region_id { 0 }
  end

  factory :campsite do
    campsite_name { "Test" }
    city_id { 0 }
  end

end

=end
