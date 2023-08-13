FactoryBot.define do
  factory :house do
    name { Faker::Movies::HarryPotter.house }

    trait(:with_devices) do
      after(:create) do |house|
        create(:air_conditioner, house:)
        create(:feeder, house:)
        create(:toilet, house:)
      end
    end
  end
end
