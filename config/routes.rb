Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root :to => "homes#top"
  resources :users do
  get :search, on: :collection
 end
  post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す
  resources :scores, only:[:new, :create, :index, :show]
  resources :messerges do
   resources :likes, only: [:create, :destroy]
 end
  resource :courses, only:[:index]
end
