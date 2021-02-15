class SearchesController < ApplicationController

  def new
    @tag = Tag.all
  end

  def create
    # @collateral = Collateral.new(collateral_params)
    #
    # if @collateral.save
    #   redirect_to @collateral
    # else
    #   render :new
    # end
  end
end
