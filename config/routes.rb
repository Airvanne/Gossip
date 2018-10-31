Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index', as: 'home'
  # get '/:id', to: 'static_page#welcome'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/gossip/:id', to: 'index#gossip'
end
