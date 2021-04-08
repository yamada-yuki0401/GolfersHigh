Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root :to => "homes#top"
  resources :users
  resources :relationships, only: [:create, :destroy]
  resource :scores, only:[:new, :create, :index]
  resources :messerges do
   resources :likes, only: [:create, :destroy]
 end
  resource :courses, only:[:index]
end
