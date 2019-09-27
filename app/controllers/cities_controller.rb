class CitiesController < ApplicationController
  validates_uniqueness_of :name
  belongs_to :county
end
