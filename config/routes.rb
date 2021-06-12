Rails.application.routes.draw do
  devise_for :users
  # トップページのルーティング
   root to: 'homes#top'
  # aboutページのルーティング
   get 'about' => 'homes#about'
end
