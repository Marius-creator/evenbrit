Rails.application.routes.draw do
  root 'event#index' #page d'accueil = get 'event/index', to: 'event#index'
  
  get 'event/secret', to: 'event#secret'
  devise_for :users#,controllers: { registrations: "registrations"
  resources :events
end


# events#new
#   si pas connecté
# registrations#new
# sessions#new
#   si connecté
# users#show
# sessions#destroy
