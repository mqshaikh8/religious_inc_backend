Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "religions#index"
  get "/article", to: "religions#articles"
  post "/login" , to: "users#login"
  post "/persist" , to: "users#persist"
  post "/create", to: "religions#create"

end
