# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  get '/goals/daily_achievements', to: 'daily_achievements#index'
  get '/goals/daily_achievements/:id', to: 'daily_achievements#show'
  post '/goals/daily_achievements', to: 'daily_achievements#create'
  patch '/goals/daily_achievements/:id', to: 'daily_achievements#update'
  delete '/goals/daily_achievements/:id', to: 'daily_achievements#destroy'
  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'
  post '/goals' => 'goals#create'
  patch '/goals/:id', to: 'goals#update'
  delete '/goals/:id', to: 'goals#destroy'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
