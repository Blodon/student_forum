Rails.application.routes.draw do
  root to: 'static#index'

  resources :root
  resources :posts
  resources :topics
  resources :courses
  resources :students


  get '/courses/:id/follow', to: 'courses#follow'
  get '/courses/:id/unfollow', to: 'courses#unfollow'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
