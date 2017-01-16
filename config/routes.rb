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
  get '/goals/:goal_id/achievements/:id', to: 'achievements#show'
  post '/goals/:goal_id/achievements', to: 'achievements#create'
  patch '/goals/:goal_id/achievements/:id' => 'achievements#update'
  put '/goals/:goal_id/achievements/:id' => 'achievements#update'
  delete '/goals/:goal_id/achievements/:id' => 'achievements#destroy'
  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'
  post '/goals' => 'goals#create'
  put '/goals/:id', to: 'goals#update'
  patch '/goals/:id', to: 'goals#update'
  delete '/goals/:id', to: 'goals#destroy'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
