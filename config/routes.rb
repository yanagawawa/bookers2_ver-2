Rails.application.routes.draw do
  devise_for :users
  # トップページのルーティング
   root to: 'homes#top'
end
