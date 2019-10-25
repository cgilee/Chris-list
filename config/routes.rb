Rails.application.routes.draw do

  resources :counties, param: :slug do
    resources :subcategories, param: :slug
    resources :categories, param: :slug
  end

  resources :cities, param: :slug do
    resources :subcategories, param: :slug
    resources :categories, param: :slug
  end

  resources :posts, param: :slug

  root to: (redirect "/counties/san-francisco-bay-area")

  #new_post
  get "/posts/new" => "posts#new"

  #category_listing
  get "counties/:county_id/categories/:category_slug/listing" => "categories#listing"
  get "cities/:city_slug/categories/:category_slug/listing" => "categories#listing"

  #subcategory_listing
  get "counties/:county_id/subcategories/:subcategory_slug/listing" => "subcategories#listing"
  get "city/:city_slug/subcategories/:subcategory_slug/listing" => "subcategories#listing"

  get "/post/new/category" => "posts#category"
  get "/post/new/content" => "posts#content"
  get "/post/new/map" => "posts#map"
  get "/post/new/photos" => "posts#photos"
  get "/post/new/preview" => "posts#preview"

end
