module Locationize
  extend ActiveSupport::Concern

    included do

      def set_location
        @city = City.find_by(slug: params[:city_slug])
        @county = County.find_by(slug: params[:county_slug]) || @city.county
      end
    
    end

end
