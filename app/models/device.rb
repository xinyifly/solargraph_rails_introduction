class Device < ApplicationRecord
  belongs_to :house

  store_accessor :modbus, :coils, :registers

  # @return [Hash{Integer => Boolean}]
  def coils = super.transform_keys(&:to_i)

  # @return [Hash{Integer => Integer}]
  def registers = super.transform_keys(&:to_i)
end
