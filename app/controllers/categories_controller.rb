class CategoriesController < ApplicationController
  before_action :set_location
  include Locationize

  def show
    @category = Category.find_by(slug: params[:slug])
    @category = @category.where(params[:search]) if params[:search].present?
    @posts = location.posts.per_category(@category)
    @posts = @posts.filter_title("%#{params[:title]}%")
    @posts = @posts.filter_min(params[:min]) if params[:min].present?
    @posts = @posts.filter_max(params[:max]) if params[:max].present?
    @pagy, @posts = pagy(@posts, items: 12)
  end

end
