class Subcategory < ApplicationRecord
  include Sluggerize
  validates_uniqueness_of :name
  belongs_to :category

end
