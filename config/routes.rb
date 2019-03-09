Rails.application.routes.draw do
  get 'home/index'

  get 'home/authentication' 
  
  scope '(/:locale)', constraints: { locale: /\w{2}/ } do
    get '/intro', controller: :home, action: :intro
    # :
    # :
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
