Rails.application.routes.draw do

  resources :counties do
    resources :subcategories
    resources :categories
    resources :cities
  end

  resources :cities do
    resources :subcategories
    resources :categories
  end

  root to: "base#index"

  get "/counties/:county" => "counties#show"
  get "/cities/:city_id" => "counties#show"

  get "/category/:antiques" => "base#antiques"
  get "/category/antiques/show" => "base#show"

  get "/post/new/county" => "post#county"
  get "/post/new/city" => "post#city"
  get "/post/new/type" => "post#type"
  get "/post/new/category" => "post#category"
  get "/post/new/content" => "post#content"
  get "/post/new/map" => "post#map"
  get "/post/new/photos" => "post#photos"
  get "/post/new/preview" => "post#preview"

end
