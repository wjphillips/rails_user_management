Rails.application.routes.draw do
  root 'users#index'
  get '/users' => 'users#index';
  get '/users/new' => 'users#new';
  get '/users/:id' => 'users#show';
  get '/users/:id/edit' => 'users#edit';
  post '/users' => 'users#create';
  post '/users/:id' => 'users#update';
  delete '/users/:id' => 'users#delete';
end