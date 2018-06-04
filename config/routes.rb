Rails.application.routes.draw do
  resources :porfolios, except:[:show]
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
