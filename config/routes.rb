Rails.application.routes.draw do

  resources :counties, param: :slug do
    resources :subcategories, param: :slug
    resources :categories, param: :slug
  end

  resources :cities, param: :slug do
    resources :subcategories, param: :slug
    resources :categories, param: :slug
  end

  get "/category/:antiques" => "base#antiques"
  get "/category/antiques/show" => "base#show"

  get "/post/new/county" => "posts#county"
  get "/post/new/city" => "posts#city"
  get "/post/new/type" => "posts#type"
  get "/post/new/category" => "posts#category"
  get "/post/new/content" => "posts#content"
  get "/post/new/map" => "posts#map"
  get "/post/new/photos" => "posts#photos"
  get "/post/new/preview" => "posts#preview"

end
