Rails.application.routes.draw do
  get 'search/new'
  get 'sessions/new'
  resources :instructors
  resources :subjects
  resources :courses
  #get 'static_pages/home'
  #resources :user
  #root 'users#index'
  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'static_pages#home'
  root 'users#new'

  get  '/subjects',    to: 'static_pages#subjects'
  get  '/courses',   to: 'static_pages#courses'
  get  '/instructors', to: 'static_pages#instructors'
  get  '/signup',  to: 'users#new'
  get  '/search',  to: 'search#index'
  post '/search',   to:  "search#index"
  get  '/search_result', to: 'search#index'
  post  '/enroll',    to: 'courses#enroll'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end
