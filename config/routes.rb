Rails.application.routes.draw do
  get 'home_page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  root 'home_page#index'
end
