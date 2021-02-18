class TagsController < ApplicationController

  def index
    @tags = Tag.all.order(:category, :name).page(params[:page]).per(5)
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag
    else
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])

    if @tag.update(tag_params)
      redirect_to @tag
    else
      render :edit
    end
  end

  def destroy
    collaterals_tags = CollateralsTag.where(tag_id: params[:id])
    collaterals_tags.destroy_all
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to @tag
  end

  private
  def tag_params
    params.require(:tag).permit(:name, :category)
  end

end
