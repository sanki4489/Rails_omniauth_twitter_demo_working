Rails.application.routes.draw do
  root 'users#index'
  resources :users
  get  "/auth/twitter/callback", to: "omniauth_callbacks#twitter"
  delete '/logout', to: 'omniauth_callbacks#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
