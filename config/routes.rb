Rails.application.routes.draw do
  resources :juices, only: [:new, :index]
  get "/juices/ingredients/new" => "juices#new_ingredient", as: :new_juice_ingredient
  get "/juices/edit"            => "juices#edit"

  root to: "juices#edit"
end
