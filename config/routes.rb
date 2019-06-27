Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/merchants', to: 'merchants#index'
  get '/merchants/new', to: 'merchants#new'
  get '/merchants/:id', to:'merchants#show' #remember that :id is your placeholder

  get '/merchants', to: 'merchants#index'
  post '/merchants', to: 'merchants#create'

  delete '/merchants/:id', to: 'merchants#destroy'
end
