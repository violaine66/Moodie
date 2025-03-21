Rails.application.routes.draw do
  devise_for :users
  root to: "moods#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/menu', to: 'pages#menu', as: :menu
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
  resources :moods
  resources :journal_posts
  resources :ressources do
    collection do
      get :pres_de_chez_moi
    end
  end

  post 'chat', to: 'chat#create'
  get 'chat', to: 'chat#index'
end
