FactoryBot.define do
  factory :air_conditioner, parent: :device, class: "AirConditioner" do
    modbus do
      { coils: { 1 => false, 2 => false, 3 => false, 4 => false },
        registers: { 1 => 250, 2 => 43 } }
    end
  end
end
