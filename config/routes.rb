Rails.application.routes.draw do
  resources :restaurants
  devise_for :users

  get "users" => "devise/registrations#edit"

  get "about" => "pages#about"
  get "home" => "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"

end
