Rails.application.routes.draw do
  get "/animals/new", to: "animals#new"
  get "/animals", to: "animals#index"
  post "/animals", to: "animals#create"
    get "/animals/:id", to: "animals#show"
end
