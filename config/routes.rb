Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'cats#index'
  get '/register' => 'register#register'
  post '/register' => 'register#login'
  delete '/register' => 'register#logout'
  resources :cats, only: [:index, :show, :edit, :new, :create, :update, :destroy]
  
end

