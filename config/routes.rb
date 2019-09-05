Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'tweets#index'
  # get '/' => 'tweets#index'
  # get 'tweets' => 'tweets#index'  #ツイート一覧画面
  # get 'tweets/new' => 'tweets#new'  #ツイート投稿画面
  # post 'tweets' => 'tweets#create' #ツイート投稿機能
  # get 'users/:id' => 'users#show' #mypageへのルーティング
  # delete 'tweets/:id' => 'tweets#destroy' #ツイート削除
  # get 'tweets/:id/edit' => 'tweets#edit' #ツイート編集
  # patch 'tweets/:id' => 'tweets#update' #ツイート更新
  # get 'tweets/:id' => 'tweets#show'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  
  
end
