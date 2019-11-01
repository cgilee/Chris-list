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

  get "/posts/new" => "posts#new"
  get "/:county/:county_slug/posts/all" => "posts#show"
  get "/:city/:city_slug/posts/all" => "posts#show"

end
