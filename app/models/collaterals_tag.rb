class CollateralsTag < ApplicationRecord
  belongs_to :collateral
  belongs_to :tag

  validates :collateral_id, presence: true
  validates :tag_id, presence: true, allow_blank: false
  validates :weight, presence: true, allow_blank: false
  validates :tag_id, uniqueness: { scope: :collateral_id }
end
