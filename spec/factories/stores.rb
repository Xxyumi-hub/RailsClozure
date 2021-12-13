FactoryBot.define do
  factory :store do |f|
    f.name { Faker::Name.name }
    f.address { Faker::Lorem.word }
    
  end
end
