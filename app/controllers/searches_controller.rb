class SearchesController < ApplicationController

  def new
    @tag = Tag.joins(:collaterals_tags).distinct
  end

  def create

    tags_array = params[:search][:tag_ids]

    @Weighted_Collaterals = TopMatchingCollateral.new(tags_array).sort_hash

    @tag = Tag.where(id: tags_array).order(:category, :name)

    render :show
  end
end
