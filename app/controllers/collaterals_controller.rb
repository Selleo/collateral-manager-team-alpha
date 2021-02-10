class CollateralsController < ApplicationController
  def index
    @collaterals = Collateral.all
  end

  def new
    
  end
end
