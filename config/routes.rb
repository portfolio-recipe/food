Rails.application.routes.draw do

  devise_for :users
  get "users/:id" => "recipe#top", as: :top
  get '/' =>'recipes#top'

resources :users
resources :recipes
resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
