class CollateralsTag < ApplicationRecord
  belongs_to :collateral
  belongs_to :tag

  validates :collateral_id, presence: true
  validates :tag_id, presence: true
  validates :weight, presence: true
end
