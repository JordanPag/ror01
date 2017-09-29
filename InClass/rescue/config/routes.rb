Rails.application.routes.draw do
  get "/animals/show", to: "animals#show"
  get "/animals/new", to: "animals#new"
  get "/animals", to: "animals#index"
  post "/animals", to: "animals#create"
end
