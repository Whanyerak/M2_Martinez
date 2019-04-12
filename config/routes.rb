Rails.application.routes.draw do
  resources :produits
  resources :commandes
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  get '/pages_achat' => 'pages#achat'
end
