class PostsController < ApplicationController
#  before_action :set_location
  include Locationize

  def new
    @tabs = %w{county city category subcategory content map photos preview} 
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def post_params
    params.require(:post).permit(:title, :county_id, :city_id, :category_id, :subcategory_id, :slug, :price_cents, :street_address, :city, :state, :zip, :description, :phone, :email, :photos => [])
  end

end
