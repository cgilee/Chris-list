class CategoriesController < ApplicationController
  validates_uniqueness_of :name
  has_many :subcategories
end
