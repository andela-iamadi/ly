Rails.application.routes.draw do
  root "welcome#index"
  get "/index"=> "welcome#index"
  get "/about" => "welcome#about", as: :about

  get "login" => "sessions#new", as: :login
  post "login" => "sessions#create"
  get "logout" => "sessions#destroy", as: :logout
  get "shorten" => "urls#shorten", as: :shorten
  get "/:path" => "urls#router"
end
