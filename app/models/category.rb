class Category < ApplicationRecord
  include Sluggerize
  include Locationize
  validates_uniqueness_of :name
  has_many :subcategories
  has_many :posts

end
