Rails.application.routes.draw do
  devise_for :users
  # トップページのルーティング
   root to: 'homes#top'
  # aboutページのルーティング
   get 'about' => 'homes#about'
# resourcesで必要なアクションとビューだけを用意する
   resources :users, only: [:index, :show, :edit, :update]
   # 「ネストする」ブックに対しての子要素となる
   resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resources :book_comments, only: [:create, :destroy]
   end
end