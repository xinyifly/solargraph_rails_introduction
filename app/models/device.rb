class Device < ApplicationRecord
  belongs_to :house

  store_accessor :modbus, :coils, :registers
end
