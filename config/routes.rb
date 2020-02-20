Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'devise/registrations', omniauth_callbacks: 'omniauth_callbacks' }
  devise_scope :user do
    root 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :user_dashboards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
