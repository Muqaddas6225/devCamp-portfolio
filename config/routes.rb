Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to:'portfolios#show', as: 'portfolio_show'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'

  root to: 'pages#home'

  # get 'pages/home'
  # get 'pages/about'
  # get 'pages/contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
 