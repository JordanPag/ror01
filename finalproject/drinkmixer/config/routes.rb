Rails.application.routes.draw do
  resources :drinks
  root to: "drinks#index"
  get "/clear", to: "drinks#clear"
end
