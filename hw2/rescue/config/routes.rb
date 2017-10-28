Rails.application.routes.draw do
  resources :animals
  root to: "animals#index"
  get "/clear", to: "animals#clear"
  resources :visits
  get "/animals/:animal_id/visits/new", to: redirect("/visits/new?animal_id=%{animal_id}")
end
