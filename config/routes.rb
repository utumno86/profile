Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => 'home#index'
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :charges, :only => [:new, :create]
  resources :payments, :only => [:new, :create, :show]
  resources :posts, :only => [:index, :show]
  resources :comments, :only => [:create, :update, :destroy]
end
