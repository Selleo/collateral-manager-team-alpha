class CollateralsController < ApplicationController
  def index
    @collaterals = Collateral.all
  end

  def show
    @collaterals = Collateral.find(params[:id])
  end

  def new
    @collaterals = Collateral.new
  end

  def create
    @collaterals = Collateral.new(title: "...", link: "...", content_type: "...")

    if @collaterals.save
      redirect_to @collaterals
    else
      render :new
    end
  end

  def edit
    @collaterals = Collateral.find(params[:id])
  end

  def update
    @article = Collateral.find(params[:id])

    if @collaterals.update(collateral_params)
      redirect_to @collaterals
    else
      render :edit
    end
  end

  def destroy
    @collaterals = Collateral.find(params[:id])
    @collaterals.destroy

    redirect_to root_path
  end

  private
  def collateral_params
    params.require(:collateral).permit(:title, :link, :content_type)
  end
end
