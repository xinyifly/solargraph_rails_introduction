module Types
  module Device
    include Types::BaseInterface

    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :house, HouseType, null: false

    definition_methods do
      def resolve_type(object, _context)
        "Types::#{object.type}Type".safe_constantize
      end
    end

    orphan_types(AirConditionerType, FeederType, ToiletType)
  end
end
