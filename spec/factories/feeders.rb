FactoryBot.define do
  factory :feeder, parent: :device, class: "Feeder" do
    modbus do
      { coils: {},
        registers: { 1 => 78, 2 => 52 } }
    end
  end
end
