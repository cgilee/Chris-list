module ApplicationHelper
  include Pagy::Frontend

  def location
    @city || @county
  end
end
