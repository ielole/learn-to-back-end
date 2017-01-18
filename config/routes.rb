# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  get 'goals/:goal_id/milestones', to: 'milestones#index'
  get 'goals/:goal_id/milestones/:id', to: 'milestones#show'
  post 'goals/:goal_id/milestones', to: 'milestones#create'
  patch 'goals/:goal_id/milestones/:id', to: 'milestones#update'
  put 'goals/:goal_id/milestones/:id', to: 'milestones#update'
  delete 'goals/:goal_id/milestones/:id', to: 'milestones#destroy'
  get '/goals/:goal_id/achievements', to: 'achievements#index'
  get '/achievements/:id', to: 'achievements#show'
  post '/goals/:goal_id/achievements', to: 'achievements#create'
  patch 'achievements/:id', to: 'achievements#update'
  put 'achievements/:id', to: 'achievements#update'
  delete '/achievements/:id', to: 'achievements#destroy'
  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'
  post '/goals' => 'goals#create'
  patch '/goals/:id', to: 'goals#update'
  put '/goals/:id', to: 'goals#update'
  delete '/goals/:id', to: 'goals#destroy'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
