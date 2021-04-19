Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root :to => "homes#top"
  resources :users do
  get :search, on: :collection
 end
  post 'follow/:id' => 'follow_relationships#create', as: 'follow' # フォローする
  post 'unfollow/:id' => 'follow_relationships#destroy', as: 'unfollow' # フォロー外す
  get 'following/:id' => 'follow_relationships#following', as: 'following' #フォロー一覧
  get 'follower/:id' => 'follow_relationships#follower', as: 'follower' #フォロワー一覧

  post 'scores/new' => 'scores#new'
  post 'scores' => 'scores#create'
  get 'scores/result/:id' => 'scores#result', as: 'result'

  resources :messerges, only: [:index, :show, :create, :destroy] do
   resources :likes, only: [:create, :destroy]
   resources :answers, only: [:create, :destroy]
 end
  resources :courses, only:[:index]
end
