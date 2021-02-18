class Tag < ApplicationRecord
  has_many :collaterals_tags
  has_many :collaterals, through: :collaterals_tags

  validates :category, presence: true, allow_blank: false
  validates :name, presence: true, allow_blank: false
  validates :category, uniqueness: { scope: :name }
end
