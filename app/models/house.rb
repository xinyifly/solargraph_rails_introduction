class House < ApplicationRecord
  has_many :devices, dependent: :destroy
  has_one :air_conditioner
  has_one :feeder
  has_one :toilet

  validates :name, presence: true, uniqueness: true
end
