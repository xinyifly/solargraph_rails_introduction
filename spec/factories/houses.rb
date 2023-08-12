FactoryBot.define do
  factory :house do
    name { Faker::Movies::HarryPotter.house }
  end
end
