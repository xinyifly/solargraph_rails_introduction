class House < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
