class County < ApplicationRecord
  include Sluggerize
    validates_uniqueness_of :name
    has_many :cities
  
end
