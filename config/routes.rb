Rails.application.routes.draw do
  root to: "base#index"
  get "/categories/:antiques" => "base#antiques"
  get "/categories/antiques/show" => "base#show"
  get "/post/new/county" => "post#county"
  get "/post/new/city" => "post#city"
  get "/post/new/type" => "post#type"
  get "/post/new/category" => "post#category"
  get "/post/new/content" => "post#content"
  get "/post/new/map" => "post#map"
  get "/post/new/photos" => "post#photos"
  get "/post/new/preview" => "post#preview"

end
