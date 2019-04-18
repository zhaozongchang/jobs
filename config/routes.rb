Rails.application.routes.draw do
  devise_for :users
  root 'jobs#index'
  resources :jobs

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
    end 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
