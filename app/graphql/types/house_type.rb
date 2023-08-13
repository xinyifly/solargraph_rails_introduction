module Types
  class HouseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :devices, [Device], null: false
    field :air_conditioner, AirConditionerType, null: true
    field :feeder, FeederType, null: true
    field :toilet, ToiletType, null: true
  end
end
