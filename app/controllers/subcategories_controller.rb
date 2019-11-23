class SubcategoriesController < ApplicationController
  before_action :set_location
  include Locationize

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @subcategory = @subcategory.where(params[:search]) if params[:search].present?
    @category = @subcategory.category 
    @posts = location.posts.per_subcategory(@subcategory)
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
