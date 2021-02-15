class Collateral < ApplicationRecord
  has_many :collaterals_tags
  has_many :tags, through: :collaterals_tags
  accepts_nested_attributes_for :collaterals_tags

  validates :title, presence: true, uniqueness: true
  validates :link, presence: true
end
