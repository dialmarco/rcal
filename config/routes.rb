Calendar::Application.routes.draw do

  resources :goals

  get "javascripts/monthly_practice"

  get "statistics/month"

  resources :practice_units

  resources :units

  resources :practices

  resources :user_practices

  resources :practice_entries

  devise_for :users

  root :to => "pages#home"

  get "pages/home"

end
