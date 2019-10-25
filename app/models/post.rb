class Post < ApplicationRecord


  belongs_to :county, optional: :true
  belongs_to :city, optional: :true
  belongs_to :category, optional: :true
  belongs_to :subcategory, optional: :true
end
