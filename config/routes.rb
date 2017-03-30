Rails.application.routes.draw do
  get '/', to: 'articles#index'

  get '/new', to: 'articles#new'
  
  post '/create', to: 'articles#create'

  get '/:id', to: 'articles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
