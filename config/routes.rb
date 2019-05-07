Rails.application.routes.draw do

  resources :scopes
  resources :associated_risks
  resources :companies do
    resources :groups
  end
  devise_for :users do
    resources :proposals
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
