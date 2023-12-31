Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :publications, except: [:index] do
    resources :comments
  end
  get '/publications', to: 'publications#index', as: 'user_root'

  # Defines the root path route ("/")
  root "publications#index"
end
