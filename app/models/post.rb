class Post < ApplicationRecord
  has_many_attached :photos

  belongs_to :county, optional: :true
  belongs_to :city, optional: :true
  belongs_to :category, optional: :true
  belongs_to :subcategory, optional: :true
end
