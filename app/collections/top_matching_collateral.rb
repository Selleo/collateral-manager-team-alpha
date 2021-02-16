class TopMatchingCollateral

  def initialize(tags_array)
    @tags_array = tags_array
  end

  def matching_collaterals
    @collaterals = Collateral.joins(collaterals_tags: :tag).where(tags: {id: @tags_array}).distinct
  end

  def calculate_weight

    @collaterals_with_weight = matching_collaterals.map do |collateral|
      {
        collateral: collateral,
        weight: CollateralsTag.where(collateral_id: collateral.id, tag_id: @tags_array).pluck(:weight).sum
      }
    end
  end

  def sort_hash
    sorted = calculate_weight.sort_by! { |a| -a[:weight]}
  end
end