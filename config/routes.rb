Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

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

end
