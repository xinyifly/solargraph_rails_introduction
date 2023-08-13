FactoryBot.define do
  factory :toilet, parent: :device, class: "Toilet" do
    modbus do
      { coils: { 1 => false },
        registers: { 1 => 23 } }
    end
  end
end
