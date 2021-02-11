class Collateral < ApplicationRecord
  has_many :collaterals_tags
  has_many :tags, through: :collaterals_tags

  validates :title, presence: true
  validates :link, presence: true
end