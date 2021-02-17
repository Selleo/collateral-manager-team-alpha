class SearchesController < ApplicationController

  def new
    @tags = Tag.joins(:collaterals_tags).distinct
    @tags_gruped_by_category = @tags.group_by { |tag| tag[:category]}
  end

  def create

    tags_array = params[:search][:tag_ids]

    @weighted_collaterals = TopMatchingCollateral.new(tags_array).sort_hash

    @tag = Tag.where(id: tags_array).order(:category, :name)

    render :show
  end
end
