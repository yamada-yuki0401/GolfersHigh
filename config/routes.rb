Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root :to => "homes#top"
  resources :users do
  get :search, on: :collection
 end
  post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す

  post 'scores/first_half' => 'scores#first_half'
  get 'scores/first_half' => 'scores#first_half'
  post 'scores/latter_half' => 'scores#latter_half'
  get 'scores/latter_half' => 'scores#latter_half'
  post 'scores' => 'scores#create'
  post 'scores/result' => 'scores#result'

  resources :messerges, only: [:index, :show, :create, :destroy] do
   resources :likes, only: [:create, :destroy]
   resources :answers, only: [:create, :destroy]
 end
  resources :courses, only:[:index]
end
