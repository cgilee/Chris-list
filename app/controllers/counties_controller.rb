class CountiesController < ApplicationController
  def show
    @county = County.find_by(id: params[:id])
  end
end
