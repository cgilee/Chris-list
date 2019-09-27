class PostController < ApplicationController

  def county
    @local = ['city of san franciso', 'south bay area', 'east bay area', 'peninsula', 'north bay / marin', 'santa cruz'];
  end

  def city
    @local = ['alameda', 'albany / el cerrito', 'berkeley', 'brentwood / oakley', 'concord / pleasant hill / martinez',
              'danville / san ramon', 'dublin / pleasanton / livermore', 'emeryville', 'fairfield / vacaville',
              'fremont / union city / newark', 'hayward / castro valley', 'hercules, pinole, san pablo, el sob',
              'lafayette / orinda / moraga', 'oakland', 'pittsburg / antioch', 'richmond / point / annex', 'san leandro',
              'vallejo / benicia', 'walnut creek']
  end

  def type
    @local = ['job offered', 'gig offered (short-term, small or odd job)', 'resume / job wanted', 'housing offered',
              'housing wanted', 'for sale by owner', 'for sale by dealer', 'wanted by owner', 'wanted by dealer',
              'service offered', 'community', 'event / class']
  end

  def category
    @local = ["antiques", "appliances", "arts & crafts", "atvs, utvs, snowmobiles", "auto parts", "auto wheels & tires",
              "aviation", "baby & kid stuff", "barter", "bicycle parts", "bicycles", "boat parts", "boats", "books & magazines",
              "business/commercial", "cars & trucks", "cds / dvds / vhs", "cell phones"]
  end

  def content
  end

  def map
  end

  def preview
  end
end
