Rails.application.routes.draw do

  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
  end
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
    resources :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  # get '/posts' => 'posts#index'
  # get '/posts/new' => 'posts#new'
  # get '/posts/:id' => 'posts#show'
  # get '/posts/:id/edit' => 'posts#show'
  # post '/posts/' => 'posts#create'
  # put '/posts/:id' => 'posts#update'
  # delete '/posts/:id' => 'posts#destroy'

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :topics, only: [:index, :show]
    end
  end
end
