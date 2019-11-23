class Post < ApplicationRecord
  include Sluggerize
  has_many_attached :photos

  belongs_to :county, optional: :true
  belongs_to :city, optional: :true
  belongs_to :category, optional: :true
  belongs_to :subcategory, optional: :true

  scope :filter_title, -> (params) { where("title ilike ?", params) } 
  scope :filter_min, -> (params) { where("price_cents >= ?", params) } 
  scope :filter_max, -> (params) { where("price_cents <= ?", params) } 
  scope :per_category, -> (category) { where(category_id: category.id) }
  scope :per_subcategory, -> (subcat) { where(subcategory_id: subcat.id) }

  def slug_field
    title
  end
end
