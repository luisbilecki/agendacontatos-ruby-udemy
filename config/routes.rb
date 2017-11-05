Rails.application.routes.draw do
  get 'home/index'
  get 'bemvindo' => 'home#index'

  #Determina quem é a página padrão
  root 'home#index'

  resources :phones
  resources :addresses
  resources :contacts#, except: [:edit]
  resources :kinds #cria 8 rotas de forma automática

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
