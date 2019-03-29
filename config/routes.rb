Rails.application.routes.draw do

  devise_for :users

  root 'recipes#top'

  get 'users/:id/edit' => 'users#edit', as: 'edit_user'

resources :users

resources :recipes do
	get "search", on: :collection
resources :recipe_items
resources :favorites,only:[:create,:destroy]
end

get "myfavorites" => "favorites#index", as: "myfavorites"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
