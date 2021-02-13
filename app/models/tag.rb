class Tag < ApplicationRecord
  has_many :collaterals_tags
  has_many :collaterals, through: :collaterals_tags

  validates :category, presence: true
  validates :name, presence: true
end
