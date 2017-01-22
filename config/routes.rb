Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new', as: 'new_article'
  # post '/articles' => 'articles#create'
  # get '/articles/:id' => 'articles#show', as: 'article'
  # get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  # patch '/articles/:id' => 'articles#update'
  # put '/articles/:id' => 'articles#update'
  # delete '/articles/:id' => 'articles#destroy'

  # get '/articles/:article_id/comments' => 'comments#index', as: 'article_comments'
  # post '/articles/:article_id/comments' => 'comments#create'
  # get '/articles/:article_id/comments/new' => 'comments#new', as: 'new_article_comment'
  # get '/articles/:article_id/comments/:id' => 'comments#show', as: 'article_comment'
  # get '/articles/:article_id/comments/edit' => 'comments#edit', as: 'edit_article_comment'
  # patch '/articles/:article_id/comments/:id' => 'comments#update'
  # put '/articles/:article_id/comments/:id' => 'comments#update'
  # delete '/articles/:article_id/comments/:id' => 'comments#destroy'

end
