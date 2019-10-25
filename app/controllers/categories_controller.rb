class CategoriesController < ApplicationController
  before_action :set_location
  include Locationize

  def show
    @category = Category.find_by(slug: params[:slug])
    @subcategory = Subcategory.find_by(slug: params[:slug])
  end

  def listing
    @category = Category.find_by(slug: params[:slug])
    @subcategory = Subcategory.find_by(slug: params[:slug])
  end
end
