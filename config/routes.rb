Rails.application.routes.draw do
  devise_for :users
  get 'comments/index'
  root 'comments#index'  # コメント一覧をルートパスとして設定する
end
