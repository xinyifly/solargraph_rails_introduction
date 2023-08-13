module Types
  class AirConditionerType < Types::BaseObject
    implements Device

    field :temperature, Float, null: false
    field :humidity, Int, null: false
    field :heating, Boolean, null: false
    field :cooling, Boolean, null: false
    field :humidifying, Boolean, null: false
    field :dehumidifying, Boolean, null: false
  end
end
