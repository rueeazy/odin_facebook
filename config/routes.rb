Rails.application.routes.draw do

  devise_for :users, :path => 'u', :controllers => { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, :only =>[:show, :index]
  resources :friendships
  resources :notifications, :only => [:show]
  resources :posts do
    resources :comments
    resources :likes
  end
  root to: 'posts#index'
end
