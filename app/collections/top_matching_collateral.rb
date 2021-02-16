class TopMatchingCollateral

  attr_accessor :collaterals

  def initialize(tags_array)
    @tags_array = tags_array
  end

  def matching_collaterals
    @collaterals = Collateral.joins(collaterals_tags: :tag).where(tags: {id: @tags_array}).distinct
  end

  def matching_collaterals_weighted
    collaterals.each do |collateral|

    end
  end

  def calculate_weight

    matching_collaterals.each do |collateral|

      collaterals_weight = CollateralsTag.where(collateral_id: collateral.id, tag_id: @tags_array).pluck(:weight).sum

      #binding.pry


    end
  end
end