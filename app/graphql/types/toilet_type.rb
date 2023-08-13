module Types
  class ToiletType < Types::BaseObject
    implements Device

    field :collect, Int, null: false
    field :cleaning, Boolean, null: false
  end
end
