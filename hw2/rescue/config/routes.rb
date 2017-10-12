Rails.application.routes.draw do
  get "/animals/new", to: "animals#new"
  get "/animals", to: "animals#index"
  post "/animals", to: "animals#create"
  get "/animals/:id", to: "animals#show"
  get "/animals/:id/edit", to: "animals#edit", as: :animal
  patch "/animals/:id/edit", to: "animals#update"
end
