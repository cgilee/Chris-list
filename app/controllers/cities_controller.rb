class CitiesController < ApplicationController
  def show
    @city = City.find_by(id: params[:id])
    @county = @city.county
  end
end
