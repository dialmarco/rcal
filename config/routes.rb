Calendar::Application.routes.draw do

  resources :practice_units

  resources :units

  resources :practices

  resources :user_practices

  devise_for :users

  root :to => "pages#home"

  get "pages/home"

end
