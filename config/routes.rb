Rails.application.routes.draw do
  
  get 'stamps/create'
  get 'stamps/comp'

  devise_for :users
  resources :stamps

  get "home/top" => "home#top"
  root 'stamps#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
