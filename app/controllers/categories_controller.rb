class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
    @category.save
    format.html { redirect_to :categories }
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to categories_path
  end




end