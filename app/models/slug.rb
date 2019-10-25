class Slug
  def initialize(object)
    @object = object
  end

  def generate
    "#{candidate}#{suffix}"
  end

  private
  def candidate
    @object.slug_field.parameterize
  end

  def suffix
    exists?? "-#{Time.now.to_i}" : nil
  end

  def exists?
    @object.class.find_by(slug: candidate).present?
  end
end
