Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => 'home#index'
  devise_for :users
  resources :charges, :only => [:new, :create]
  resources :payments, :only => [:new, :create, :show]
end
