class SearchesController < ApplicationController

  def new
    @tag = Tag.joins(:collaterals_tags).distinct
  end

  def create

    tags_array = params[:search][:tag_ids]

    # @collaterals = Collateral.joins(collaterals_tags: :tag).where(tags: {id: tags_array}).distinct

    @Weighted_Collaterals = TopMatchingCollateral.new(tags_array).calculate_weight

    @tag = Tag.where(id: tags_array).order(:category, :name)

    render :show #or 'collateralsindex'
  end
end
