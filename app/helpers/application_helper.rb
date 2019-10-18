module ApplicationHelper

  def location
    @city || @county
  end
end
