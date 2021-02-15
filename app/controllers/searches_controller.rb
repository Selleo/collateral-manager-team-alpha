class SearchesController < ApplicationController

  def new

    @tag = Tag.joins(:collaterals_tags).distinct

  end

  def create

    @tag = Tag.new(params)

    @collateral = Collateral.joins(collaterals_tags: :tag).where(tags: {id: test}).distinct

    # @collateral = Collateral.new(collateral_params)
    #
    # if @collateral.save
    #   redirect_to @collateral
    # else
    #   render :new
    # end
  end

  private
  def params
    params.require(:tag).permit(:id)
  end
end
