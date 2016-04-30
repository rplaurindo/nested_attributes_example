Rails.application.routes.draw do
  resources :juices
  get "/juices/ingredients/new" => "juices#new_ingredient", as: :new_juice_ingredient

  root to: "juices#new"
end
