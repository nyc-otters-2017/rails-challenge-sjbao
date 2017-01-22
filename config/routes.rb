Rails.application.routes.draw do
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create'
  get '/articles/:id' => 'articles#show', as: 'article'
  delete '/articles/:id' => 'articles#delete'
end
