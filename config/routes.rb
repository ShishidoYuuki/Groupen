Rails.application.routes.draw do
  devise_for :users

  # ログアウト用のルートを設定する
  devise_scope :user do
    delete 'users/sign_out', to: 'devise/sessions#destroy', as: :custom_destroy_user_session
  end

  get 'comments/index'
  root 'comments#index'

  resources :events, only: %i[index new create]

end
