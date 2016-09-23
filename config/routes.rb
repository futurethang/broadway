Rails.application.routes.draw do
  # get 'plays/index'
  resources :plays
  root 'plays#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
