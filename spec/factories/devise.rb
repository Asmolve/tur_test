FactoryBot.define do
  factory :country do
    country_name { "Test" }
  end
  factory :country_sql do
    country_name {";select * from country;"}
  end
  factory :region do
    region_name {"Test"}
    country_id {1}
  end
  factory :region_blink do
    region_name {""}
  end
  
  factory :city do
    city_name {"Test"}
    region_id {1}
  end
  factory :city_blink do
    city_name {""}
  end

  factory :campsite do
    campsite_name {"Test"}
    city_id {1}
  end
  factory :campsite_blink do
    campsite_name {""}
  end


end
