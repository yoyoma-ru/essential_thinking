Rails.application.routes.draw do
  devise_for :users, contorollers:{
  	sessions: 'users/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }
  namespace :admins do
  	resources :learns
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins, contorollers:{
  	sessions: 'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }
  namespace :users do
  	resources :learns, only: [:index, :show]
  end

  root 'homes#top'
  get '/homes/about' => 'homes#about'
end
