class SubcategoriesController < ApplicationController
  def show
    @category = Category.find_by(id: params[:id])
    @subcategory = Subcategory.find_by(category_id: params[:id])
  end

end
