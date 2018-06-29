Rails.application.routes.draw do
  devise_for :users, path: '',path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'} ##Personalizando routes en authentication
  resources :porfolios, except:[:show]
  get 'angular-items', to: 'porfolios#angular'
  get 'porfolio/:id', to: 'porfolios#show', as: 'porfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do 
      get :toggle_status
      
    end
  end
 
 root to: 'pages#home'

end
