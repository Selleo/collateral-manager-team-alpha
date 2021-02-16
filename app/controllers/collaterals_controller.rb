class CollateralsController < ApplicationController
  def index
    @collaterals = Collateral.page(params[:page])
  end

  def show
    @collateral = Collateral.find(params[:id])
  end

  def new
    @collateral = Collateral.new
  end

  def create
    @collateral = Collateral.new(collateral_params)

    if @collateral.save
      redirect_to @collateral
    else
      render :new
    end
  end

  def edit
    @collateral = Collateral.find(params[:id])
  end

  def update
    @collateral = Collateral.find(params[:id])

    if @collateral.update(collateral_params)
      redirect_to @collateral
    else
      render :edit
    end
  end

  def destroy
    @collateral = Collateral.find(params[:id])
    @collateral.destroy

    redirect_to root_path
  end

  private
    def collateral_params
      params.require(:collateral).permit(:title, :link, :content_type, :page)
    end
end
