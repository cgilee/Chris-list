module Sluggerize
  extend ActiveSupport::Concern

  included do

    validates_uniqueness_of :slug
    before_save :set_slug

    def set_slug
      self.slug = Slug.new(self).generate
    end

    def to_param
      slug
    end

    def slug_field
      try(:name) || raise("Please set slug_field value!!!!")
    end

  end
end
