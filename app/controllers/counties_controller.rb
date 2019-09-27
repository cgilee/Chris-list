class CountiesController < ApplicationController
  validates_uniqueness_of :name
  has_many :cities
end
