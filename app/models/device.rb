class Device < ApplicationRecord
  belongs_to :house

  store_accessor :modbus, :coils, :registers

  def coils = super.transform_keys(&:to_i)

  def registers = super.transform_keys(&:to_i)
end
