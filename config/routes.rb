Rails.application.routes.draw do

  resources :posts
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
