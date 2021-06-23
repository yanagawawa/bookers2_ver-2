Rails.application.routes.draw do
  devise_for :users
  # トップページのルーティング
   root to: 'homes#top'
  # aboutページのルーティング
   get 'about' => 'homes#about'

   resources :users, only: [:index, :show, :edit, :update]
   resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resources :book_comments, only: [:create, :destroy]
   end
end