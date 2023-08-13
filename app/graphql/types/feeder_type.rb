module Types
  class FeederType < Types::BaseObject
    implements Device

    field :food, Int, null: false
    field :water, Int, null: false
  end
end
