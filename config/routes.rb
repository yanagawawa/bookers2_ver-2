Rails.application.routes.draw do
  devise_for :users
  # トップページのルーティング
   root to: 'homes#top'
  # aboutページのルーティング
   get 'about' => 'homes#about'
   resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
   resources :users, only: [:index, :show, :edit, :update]
end