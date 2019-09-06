Rails.application.routes.draw do
  root to: "base#index"
  get "/catagory/:antiques" => "base#antiques"
end
