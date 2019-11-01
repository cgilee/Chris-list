class SubcategoriesController < ApplicationController
  before_action :set_location
  include Locationize

  def show
    @subcategory = Subcategory.find_by(slug: params[:slug])
    @category = @subcategory.category 
  end

end
