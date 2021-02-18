class SearchesController < ApplicationController

  def index
    tags = Tag.joins(:collaterals_tags).order(:name).distinct
    @tags_grouped_by_category = tags.group_by { |tag| tag[:category]}

    tags_array = params[:search].present? ? params[:search][:tag_ids] : []

    if tags_array
      @weighted_collaterals = Kaminari.paginate_array(TopMatchingCollateral.new(tags_array).sort_hash).page(params[:page])
      @selected_tags = Tag.where(id: tags_array).order(:category, :name)
    end

  end

end
