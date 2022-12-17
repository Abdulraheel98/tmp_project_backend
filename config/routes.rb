Rails.application.routes.draw do
  devise_for :technicians
  devise_for :companies

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Rails.application.routes.draw do

  resources :subscriptions, only: %i[show create update]
 
  # devise_for :views
  # devise_for :views
  #   devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
  # end
end
