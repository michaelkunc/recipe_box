Rails.application.routes.draw do

  devise_for :users
  devise_for :installs
  resources :recipes

  root "recipes#index"

end
