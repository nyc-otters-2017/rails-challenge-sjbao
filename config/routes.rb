Rails.application.routes.draw do
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  get '/articles/:id' => 'articles#show', as: 'article'
end
