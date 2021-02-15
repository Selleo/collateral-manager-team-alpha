class SearchesController < ApplicationController

  def new
    @tag = Tag.joins(:collaterals_tags).distinct
  end

  def create

    tags_array = params[:search][:tag_ids]
    @collaterals = Collateral.joins(collaterals_tags: :tag).where(tags: {id: tags_array}).distinct
    render :show #or 'collateralsindex'
  end

  private
  def tag_params
    params.require(:search).permit
  end
end
