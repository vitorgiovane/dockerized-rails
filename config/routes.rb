require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app
  end
end
