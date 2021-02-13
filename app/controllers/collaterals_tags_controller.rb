class CollateralsTagsController < ApplicationController

  def index
    @collaterals_tag = CollateralsTag.new
    @collaterals_tag.collateral_id = params[:id]
    @tags = Tag.all
    binding.pry
  end

  def show
    @collaterals_tag = CollateralsTag.find(params[:id])
  end

  def new
    @collaterals_tag = CollateralsTag.new
    @collaterals = Collateral.all
    @collaterals_tag.collateral_id = params[:id]
    @tags = Tag.all
  end

  def create
    @collaterals_tag = CollateralsTag.new(tag_params)
    @collaterals_tag.collateral_id = params[:collateral_id]

    if @collaterals_tag.save
      redirect_to new_collateral_tag_path(params[:collateral_id])
    else
      render :new
    end
  end

  def edit
    @collaterals_tag = CollateralsTag.find(params[:id])
  end

  def update
    @collaterals_tag = CollateralsTag.find(params[:id])

    if @collaterals_tag.update(tag_params)
      redirect_to @collaterals_tag
    else
      render :edit
    end
  end

  def destroy
    @collaterals_tag = CollateralsTag.find(params[:id])
    @collaterals_tag.destroy

    redirect_to root_path
  end

  private
  def tag_params
    params.require(:collaterals_tag).permit(:collateral_id, :tag_id, :weight)
  end
end
